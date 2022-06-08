package com.example.bmstuDevPo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;

import com.example.bmstuDevPo.databinding.ActivityMainBinding;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.io.IOUtils;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class MainActivity extends AppCompatActivity implements TransactionEvents {
    ActivityResultLauncher activityResultLauncher;
    // Used to load the 'myapplication' library on application startup.
    static {
        System.loadLibrary("bmstuDevPo");
        System.loadLibrary("mbedcrypto");
    }

    private ActivityMainBinding binding;
    private String pin;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        activityResultLauncher  = registerForActivityResult(
                new ActivityResultContracts.StartActivityForResult(),
                new ActivityResultCallback<ActivityResult>() {
                    @Override
                    public void onActivityResult(ActivityResult result) {
                        if (result.getResultCode() == Activity.RESULT_OK) {
                            Intent data = result.getData();
                            pin = data.getStringExtra("pin");
                            synchronized (MainActivity.this) {
                                MainActivity.this.notifyAll();
                            }
                        }
                    }
                });

        int res = initRing();
        if (res != 0 ) {
            Log.e("init", "error initRing");
        }
        //first lab
        byte[] v = randomBytes(10);
        byte[] v1 = randomBytes(10);
        Log.d("randomBytes_1", v.toString());
        Log.d("randomBytes_2", v1.toString());

        String beforeEncrypt = "000000000000000102";
        Log.d("encrypt", beforeEncrypt);
        byte[] key = stringToHex("0123456789ABCDEF0123456789ABCDE0");
        byte[] enc = encrypt(key, stringToHex(beforeEncrypt));
        byte[] dec = decrypt(key, enc);
        String afterDecrypt = new String(Hex.encodeHex(dec)).toUpperCase();
        Log.d("decrypt", afterDecrypt);
        if (!beforeEncrypt.equals(afterDecrypt)) {
            Log.e("decrypt", "error in compare string encrypt");
        }
    }


    @Override
    public String enterPin(int ptc, String amount) {
        pin = new String();
        Intent it = new Intent(MainActivity.this, PinpadActivity.class);
        it.putExtra("ptc", ptc);
        it.putExtra("amount", amount);
        synchronized (MainActivity.this) {
            //activityResultLauncher.launch(it);
            testHttpClient();
            try {
                MainActivity.this.wait();
            } catch (Exception ex) {
                Log.e("MainActivity wait", ex.toString());
            }
        }
        return pin;
    }


    @Override
    public void transactionResult(boolean result) {
        runOnUiThread(()-> {
            Toast.makeText(MainActivity.this, result ? "ok" : "failed", Toast.LENGTH_SHORT).show();
        });
    }


    protected void testHttpClient()
    {
        new Thread(() -> {
            try {
                HttpURLConnection uc = (HttpURLConnection)
                        (new URL("http://192.168.21.43:8080/api/v1/title").openConnection());
                InputStream inputStream = uc.getInputStream();
                String html = IOUtils.toString(inputStream);
                String title = getPageTitle(html);
                runOnUiThread(() ->
                {
                    Toast.makeText(this, title, Toast.LENGTH_LONG).show();
                });
            } catch (Exception ex) {
                Log.e("fapptag", "Http client fails", ex);
            }
        }).start();
    }


    protected String getPageTitle(String html) {
        Pattern pattern = Pattern.compile("<title>(.+?)</title>", Pattern.DOTALL);
        Matcher matcher = pattern.matcher(html);
        String p;
        if (matcher.find())
            p = matcher.group(1);
        else
            p = "Not found";
        return p;
    }


    public void onButtonClick (View v) {
        byte[] trd = stringToHex("9F0206000000000100");
        transaction(trd);
    }


    public static byte[] stringToHex(String s) {
        byte[] hex;
        try {
            hex = Hex.decodeHex(s.toCharArray());
        } catch (DecoderException ex) {
            hex = null;
        }
        return hex;
    }

    /**
     * A native method that is implemented by the 'myapplication' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI();
    public native int initRing();
    public native boolean transaction(byte[] trd);
    public static native byte[] randomBytes(int no);
    public static native byte[] encrypt(byte[] key, byte[] data);
    public static native byte[] decrypt(byte[] key, byte[] data);
}
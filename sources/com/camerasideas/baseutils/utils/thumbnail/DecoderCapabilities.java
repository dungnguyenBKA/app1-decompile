package com.camerasideas.baseutils.utils.thumbnail;

public class DecoderCapabilities {
    static {
        try {
            System.loadLibrary("media_jni");
            native_init();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private DecoderCapabilities() {
    }

    private static final native int native_get_audio_decoder_type(int i);

    private static final native int native_get_num_audio_decoders();

    private static final native int native_get_num_video_decoders();

    private static final native int native_get_video_decoder_type(int i);

    private static final native void native_init();
}

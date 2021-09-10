package com.vungle.warren.network.converters;

public class JsonConverter implements Converter<mh0, s60> {
    private static final j60 gson = new k60().a();

    public s60 convert(mh0 mh0) {
        try {
            return (s60) gson.c(mh0.string(), s60.class);
        } finally {
            mh0.close();
        }
    }
}

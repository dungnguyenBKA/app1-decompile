package com.vungle.warren.network.converters;

public class EmptyResponseConverter implements Converter<mh0, Void> {
    public Void convert(mh0 mh0) {
        mh0.close();
        return null;
    }
}

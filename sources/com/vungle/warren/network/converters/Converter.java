package com.vungle.warren.network.converters;

public interface Converter<In, Out> {
    Out convert(In in);
}

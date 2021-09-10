.class public Lqf0;
.super Ljp/co/cyberagent/android/gpuimage/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepNegativeTextureCoordinate = inputTextureCoordinate - offset;\noneStepPositiveTextureCoordinate = inputTextureCoordinate + offset;\ntwoStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 3.0);\nfourStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 4.0);\nfourStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 4.0);\n}\n"

    const-string v1, "precision highp float;varying vec2 centerTextureCoordinate;varying vec2 oneStepPositiveTextureCoordinate;varying vec2 oneStepNegativeTextureCoordinate;varying vec2 twoStepsPositiveTextureCoordinate;varying vec2 twoStepsNegativeTextureCoordinate;varying vec2 threeStepsPositiveTextureCoordinate;varying vec2 threeStepsNegativeTextureCoordinate;varying vec2 fourStepsPositiveTextureCoordinate;varying vec2 fourStepsNegativeTextureCoordinate;uniform sampler2D inputImageTexture;void main(){lowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);lowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);lowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);lowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);lowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);lowp vec4 threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate);lowp vec4 threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate);lowp vec4 fourStepsPositiveIntensity = texture2D(inputImageTexture, fourStepsPositiveTextureCoordinate);lowp vec4 fourStepsNegativeIntensity = texture2D(inputImageTexture, fourStepsNegativeTextureCoordinate);lowp vec4 minValue = min(centerIntensity, oneStepPositiveIntensity);minValue = min(minValue, oneStepNegativeIntensity);minValue = min(minValue, twoStepsPositiveIntensity);minValue = min(minValue, twoStepsNegativeIntensity);minValue = min(minValue, threeStepsPositiveIntensity);minValue = min(minValue, threeStepsNegativeIntensity);minValue = min(minValue, fourStepsPositiveIntensity);gl_FragColor = min(minValue, fourStepsNegativeIntensity);}"

    .line 1
    invoke-direct {p0, v0, v1, v0, v1}, Ljp/co/cyberagent/android/gpuimage/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

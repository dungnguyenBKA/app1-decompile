.class public Lcom/airbnb/lottie/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method public static a(Ljava/lang/String;)F
    .locals 1

    .line 1
    sget p0, Lcom/airbnb/lottie/b;->a:I

    const/4 v0, 0x0

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 2
    sput p0, Lcom/airbnb/lottie/b;->a:I

    :cond_0
    return v0
.end method

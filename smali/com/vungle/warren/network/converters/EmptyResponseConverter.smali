.class public Lcom/vungle/warren/network/converters/EmptyResponseConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/network/converters/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/converters/Converter<",
        "Lmh0;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lmh0;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/network/converters/EmptyResponseConverter;->convert(Lmh0;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lmh0;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lmh0;->close()V

    const/4 p1, 0x0

    return-object p1
.end method

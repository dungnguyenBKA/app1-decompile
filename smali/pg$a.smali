.class public Lpg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lag<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
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
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Ldg;)Lzf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldg;",
            ")",
            "Lzf<",
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lpg;

    const-class v1, Lsf;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Ldg;->c(Ljava/lang/Class;Ljava/lang/Class;)Lzf;

    move-result-object p1

    invoke-direct {v0, p1}, Lpg;-><init>(Lzf;)V

    return-object v0
.end method

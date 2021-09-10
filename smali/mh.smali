.class public final Lmh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lwg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lwg;

    invoke-direct {v0}, Lwg;-><init>()V

    iput-object v0, p0, Lmh;->a:Lwg;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 1

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    invoke-static {p1}, Lyk;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lmh;->a:Lwg;

    invoke-virtual {v0, p1, p2, p3, p4}, Lqg;->d(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/i;)Lhe;

    move-result-object p1

    return-object p1
.end method

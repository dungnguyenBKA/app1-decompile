.class public Lzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfh;


# direct methods
.method public constructor <init>(Lfh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzg;->a:Lfh;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    iget-object p1, p0, Lzg;->a:Lfh;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 1

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {p1}, Lyk;->e(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lzg;->a:Lfh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lfh;->c(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;)Lhe;

    move-result-object p1

    return-object p1
.end method

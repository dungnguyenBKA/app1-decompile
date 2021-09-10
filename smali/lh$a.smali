.class public final Llh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lbd;

.field private final b:Loe;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/List;Loe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Loe;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Llh$a;->b:Loe;

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Llh$a;->c:Ljava/util/List;

    .line 6
    new-instance p2, Lbd;

    invoke-direct {p2, p1, p3}, Lbd;-><init>(Ljava/io/InputStream;Loe;)V

    iput-object p2, p0, Llh$a;->a:Lbd;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    iget-object v0, p0, Llh$a;->c:Ljava/util/List;

    iget-object v1, p0, Llh$a;->a:Lbd;

    .line 2
    invoke-virtual {v1}, Lbd;->d()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Llh$a;->b:Loe;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/f;->b(Ljava/util/List;Ljava/io/InputStream;Loe;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Llh$a;->a:Lbd;

    invoke-virtual {v0}, Lbd;->d()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Llh$a;->a:Lbd;

    invoke-virtual {v0}, Lbd;->c()V

    return-void
.end method

.method public d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3

    .line 1
    iget-object v0, p0, Llh$a;->c:Ljava/util/List;

    iget-object v1, p0, Llh$a;->a:Lbd;

    invoke-virtual {v1}, Lbd;->d()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Llh$a;->b:Loe;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/f;->e(Ljava/util/List;Ljava/io/InputStream;Loe;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

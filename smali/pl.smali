.class Lpl;
.super Lc0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc0<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lql;


# direct methods
.method constructor <init>(Lql;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpl;->a:Lql;

    invoke-direct {p0, p2}, Lc0;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p3, :cond_0

    .line 2
    const-class p1, Ltl;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    check-cast p3, Ltl;

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Ltl;->a(Z)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    iget-object p1, p0, Lpl;->a:Lql;

    invoke-static {p1}, Lql;->a(Lql;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int p1, p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 5
    :goto_1
    div-int/lit16 p1, p1, 0x400

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sizeOf bitmapSize = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc0;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImageCache"

    invoke-static {v0, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method

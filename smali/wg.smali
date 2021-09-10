.class public final Lwg;
.super Lqg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqg<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lqe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqg;-><init>()V

    .line 2
    new-instance v0, Lre;

    invoke-direct {v0}, Lre;-><init>()V

    iput-object v0, p0, Lwg;->b:Lqe;

    return-void
.end method


# virtual methods
.method protected c(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Lhe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;",
            ")",
            "Lhe<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p4}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapImageDecoder"

    const/4 p3, 0x2

    .line 2
    invoke-static {p2, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 5
    :cond_0
    new-instance p2, Lxg;

    iget-object p3, p0, Lwg;->b:Lqe;

    invoke-direct {p2, p1, p3}, Lxg;-><init>(Landroid/graphics/Bitmap;Lqe;)V

    return-object p2
.end method

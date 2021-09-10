.class Lni$a;
.super Lhk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhk<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Landroid/os/Handler;

.field final f:I

.field private final g:J

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhk;-><init>()V

    .line 2
    iput-object p1, p0, Lni$a;->e:Landroid/os/Handler;

    .line 3
    iput p2, p0, Lni$a;->f:I

    .line 4
    iput-wide p3, p0, Lni$a;->g:J

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lsk;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iput-object p1, p0, Lni$a;->h:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lni$a;->e:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lni$a;->e:Landroid/os/Handler;

    iget-wide v0, p0, Lni$a;->g:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lni$a;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method i()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lni$a;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

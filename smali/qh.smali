.class public Lqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ldi;

.field private final b:Lqe;


# direct methods
.method public constructor <init>(Ldi;Lqe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqh;->a:Ldi;

    .line 3
    iput-object p2, p0, Lqh;->b:Lqe;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.resource"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    iget-object p4, p0, Lqh;->a:Ldi;

    invoke-virtual {p4, p1}, Ldi;->c(Landroid/net/Uri;)Lhe;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Lai;

    invoke-virtual {p1}, Lai;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object p4, p0, Lqh;->b:Lqe;

    invoke-static {p4, p1, p2, p3}, Lgh;->a(Lqe;Landroid/graphics/drawable/Drawable;II)Lhe;

    move-result-object p1

    :goto_0
    return-object p1
.end method

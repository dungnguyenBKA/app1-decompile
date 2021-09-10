.class public final Loi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Lmc;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lqe;


# direct methods
.method public constructor <init>(Lqe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Loi;->a:Lqe;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 0

    .line 1
    check-cast p1, Lmc;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 0

    .line 1
    check-cast p1, Lmc;

    .line 2
    invoke-interface {p1}, Lmc;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object p2, p0, Loi;->a:Lqe;

    invoke-static {p1, p2}, Lxg;->b(Landroid/graphics/Bitmap;Lqe;)Lxg;

    move-result-object p1

    return-object p1
.end method

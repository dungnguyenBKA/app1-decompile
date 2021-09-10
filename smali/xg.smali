.class public Lxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe;
.implements Lde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lde;"
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lqe;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lqe;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lxg;->b:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lxg;->c:Lqe;

    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;Lqe;)Lxg;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lxg;

    invoke-direct {v0, p0, p1}, Lxg;-><init>(Landroid/graphics/Bitmap;Lqe;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxg;->c:Lqe;

    iget-object v1, p0, Lxg;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lqe;->d(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lxg;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lhl;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lxg;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxg;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.class public final Lii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmc$a;


# instance fields
.field private final a:Lqe;

.field private final b:Loe;


# direct methods
.method public constructor <init>(Lqe;Loe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lii;->a:Lqe;

    .line 3
    iput-object p2, p0, Lii;->b:Loe;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lii;->a:Lqe;

    invoke-interface {v0, p1, p2, p3}, Lqe;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public b(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lii;->b:Loe;

    if-nez v0, :cond_0

    .line 2
    new-array p1, p1, [B

    return-object p1

    .line 3
    :cond_0
    const-class v1, [B

    invoke-interface {v0, p1, v1}, Loe;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public c(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Lii;->b:Loe;

    if-nez v0, :cond_0

    .line 2
    new-array p1, p1, [I

    return-object p1

    .line 3
    :cond_0
    const-class v1, [I

    invoke-interface {v0, p1, v1}, Loe;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public d(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lii;->a:Lqe;

    invoke-interface {v0, p1}, Lqe;->d(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public e([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lii;->b:Loe;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Loe;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public f([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lii;->b:Loe;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Loe;->d(Ljava/lang/Object;)V

    return-void
.end method

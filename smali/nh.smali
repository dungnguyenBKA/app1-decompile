.class public final Lnh;
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
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lde;"
    }
.end annotation


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Lhe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lhe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lhe<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lnh;->b:Landroid/content/res/Resources;

    .line 4
    iput-object p2, p0, Lnh;->c:Lhe;

    return-void
.end method

.method public static b(Landroid/content/res/Resources;Lhe;)Lhe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lhe<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lhe<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lnh;

    invoke-direct {v0, p0, p1}, Lnh;-><init>(Landroid/content/res/Resources;Lhe;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnh;->c:Lhe;

    invoke-interface {v0}, Lhe;->a()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnh;->c:Lhe;

    invoke-interface {v0}, Lhe;->c()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lnh;->b:Landroid/content/res/Resources;

    iget-object v2, p0, Lnh;->c:Lhe;

    invoke-interface {v2}, Lhe;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnh;->c:Lhe;

    instance-of v1, v0, Lde;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lde;

    invoke-interface {v0}, Lde;->initialize()V

    :cond_0
    return-void
.end method

.class final Lcy$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Lmy;

.field b:Z


# direct methods
.method public constructor <init>(Lcy$b;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 5
    iget-object v0, p1, Lcy$b;->a:Lmy;

    invoke-virtual {v0}, Lmy;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lmy;

    iput-object v0, p0, Lcy$b;->a:Lmy;

    .line 6
    iget-boolean p1, p1, Lcy$b;->b:Z

    iput-boolean p1, p0, Lcy$b;->b:Z

    return-void
.end method

.method public constructor <init>(Lmy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, Lcy$b;->a:Lmy;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcy$b;->b:Z

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Lcy;

    new-instance v1, Lcy$b;

    invoke-direct {v1, p0}, Lcy$b;-><init>(Lcy$b;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcy;-><init>(Lcy$b;Lcy$a;)V

    return-object v0
.end method

.class Ls4$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Ly4;

.field c:Landroid/animation/AnimatorSet;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field e:Lx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls4$b;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_4

    .line 2
    iget v0, p1, Ls4$b;->a:I

    iput v0, p0, Ls4$b;->a:I

    .line 3
    iget-object v0, p1, Ls4$b;->b:Ly4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ly4;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Ly4;

    iput-object p3, p0, Ls4$b;->b:Ly4;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Ly4;

    iput-object p3, p0, Ls4$b;->b:Ly4;

    .line 7
    :goto_0
    iget-object p3, p0, Ls4$b;->b:Ly4;

    invoke-virtual {p3}, Ly4;->mutate()Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Ls4$b;->b:Ly4;

    .line 8
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    iget-object p2, p0, Ls4$b;->b:Ly4;

    iget-object p3, p1, Ls4$b;->b:Ly4;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    iget-object p2, p0, Ls4$b;->b:Ly4;

    invoke-virtual {p2, v1}, Ly4;->c(Z)V

    .line 11
    :cond_1
    iget-object p2, p1, Ls4$b;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 13
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Ls4$b;->d:Ljava/util/ArrayList;

    .line 14
    new-instance p3, Lx;

    invoke-direct {p3, p2}, Lx;-><init>(I)V

    iput-object p3, p0, Ls4$b;->e:Lx;

    :goto_1
    if-ge v1, p2, :cond_2

    .line 15
    iget-object p3, p1, Ls4$b;->d:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/animation/Animator;

    .line 16
    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 17
    iget-object v2, p1, Ls4$b;->e:Lx;

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, p3, v3}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 19
    check-cast p3, Ljava/lang/String;

    .line 20
    iget-object v2, p0, Ls4$b;->b:Ly4;

    invoke-virtual {v2, p3}, Ly4;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 22
    iget-object v2, p0, Ls4$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v2, p0, Ls4$b;->e:Lx;

    invoke-virtual {v2, v0, p3}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    :cond_2
    iget-object p1, p0, Ls4$b;->c:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_3

    .line 25
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Ls4$b;->c:Landroid/animation/AnimatorSet;

    .line 26
    :cond_3
    iget-object p1, p0, Ls4$b;->c:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Ls4$b;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget v0, p0, Ls4$b;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No constant state support for SDK < 24."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

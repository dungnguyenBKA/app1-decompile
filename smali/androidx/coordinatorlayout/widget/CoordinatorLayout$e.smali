.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

.field b:Z

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field public g:I

.field public h:I

.field i:I

.field j:I

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field final q:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 3
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 4
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 6
    iput p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 7
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 8
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->q:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 12
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 13
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 15
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 16
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 17
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 18
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->q:Landroid/graphics/Rect;

    .line 19
    sget-object v2, Landroidx/coordinatorlayout/R$styleable;->b:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    const/4 v3, 0x1

    .line 21
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    const/4 v4, 0x2

    .line 22
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    const/4 v5, 0x6

    .line 23
    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    const/4 v1, 0x5

    .line 24
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    const/4 v1, 0x4

    .line 25
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    const/4 v1, 0x3

    .line 26
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    if-eqz v5, :cond_6

    .line 27
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    sget-object v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Ljava/lang/String;

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_0
    const-string v5, "."

    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/16 v5, 0x2e

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    goto :goto_0

    .line 33
    :cond_2
    sget-object v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_3
    :goto_0
    :try_start_0
    sget-object v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_4

    .line 35
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 37
    :cond_4
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;

    if-nez v5, :cond_5

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v1, v0, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 39
    sget-object v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:[Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 40
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 41
    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v3

    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    goto :goto_2

    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Could not inflate Behavior subclass "

    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 45
    :cond_6
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz p1, :cond_7

    .line 47
    invoke-virtual {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->f(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V

    :cond_7
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 68
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 69
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 71
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 72
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 73
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 74
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->q:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 59
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 60
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 62
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 63
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 64
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 65
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->q:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 50
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 51
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 53
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 54
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 55
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->q:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    return v0
.end method

.method public c()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->p:Z

    return v0
.end method

.method e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->c()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    move v1, p2

    :cond_2
    or-int/2addr p1, v1

    .line 4
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Z

    return p1
.end method

.method f(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->o:Z

    return p1

    .line 2
    :cond_1
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->n:Z

    return p1
.end method

.method g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->p:Z

    return-void
.end method

.method h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Z

    return-void
.end method

.method i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->p:Z

    return-void
.end method

.method j(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->o:Z

    goto :goto_0

    .line 2
    :cond_1
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->n:Z

    :goto_0
    return-void
.end method

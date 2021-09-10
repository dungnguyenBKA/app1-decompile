.class Landroidx/transition/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/f;


# static fields
.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Z


# instance fields
.field private final b:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/transition/h;->b:Landroid/view/View;

    return-void
.end method

.method static b(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/f;
    .locals 8

    .line 1
    sget-boolean v0, Landroidx/transition/h;->f:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Landroidx/transition/h;->c()V

    .line 3
    sget-object v0, Landroidx/transition/h;->c:Ljava/lang/Class;

    const-string v5, "addGhost"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v6, v2

    const-class v7, Landroid/view/ViewGroup;

    aput-object v7, v6, v4

    const-class v7, Landroid/graphics/Matrix;

    aput-object v7, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/transition/h;->e:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "GhostViewApi21"

    const-string v6, "Failed to retrieve addGhost method"

    .line 5
    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    sput-boolean v4, Landroidx/transition/h;->f:Z

    .line 7
    :cond_0
    sget-object v0, Landroidx/transition/h;->e:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 8
    :try_start_1
    new-instance v6, Landroidx/transition/h;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    .line 9
    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-direct {v6, p0}, Landroidx/transition/h;-><init>(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v6

    :catch_1
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    :cond_1
    return-object v5
.end method

.method private static c()V
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/transition/h;->d:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.view.GhostView"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/transition/h;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GhostViewApi21"

    const-string v2, "Failed to retrieve GhostView class"

    .line 3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Landroidx/transition/h;->d:Z

    :cond_0
    return-void
.end method

.method static d(Landroid/view/View;)V
    .locals 6

    .line 1
    sget-boolean v0, Landroidx/transition/h;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Landroidx/transition/h;->c()V

    .line 3
    sget-object v0, Landroidx/transition/h;->c:Ljava/lang/Class;

    const-string v3, "removeGhost"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/transition/h;->g:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "GhostViewApi21"

    const-string v4, "Failed to retrieve removeGhost method"

    .line 5
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    sput-boolean v2, Landroidx/transition/h;->h:Z

    .line 7
    :cond_0
    sget-object v0, Landroidx/transition/h;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    .line 8
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/h;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

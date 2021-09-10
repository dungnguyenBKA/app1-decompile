.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/i;
.implements Landroidx/lifecycle/v;
.implements Landroidx/savedstate/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$b;,
        Landroidx/fragment/app/Fragment$d;,
        Landroidx/fragment/app/Fragment$c;,
        Landroidx/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final T:Ljava/lang/Object;


# instance fields
.field A:Z

.field B:Z

.field private C:Z

.field D:Landroid/view/ViewGroup;

.field E:Landroid/view/View;

.field F:Landroid/view/View;

.field G:Z

.field H:Z

.field I:Landroidx/fragment/app/Fragment$b;

.field J:Z

.field K:Z

.field L:F

.field M:Landroid/view/LayoutInflater;

.field N:Z

.field O:Landroidx/lifecycle/f$b;

.field P:Landroidx/lifecycle/j;

.field Q:Landroidx/fragment/app/x;

.field R:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Landroidx/lifecycle/i;",
            ">;"
        }
    .end annotation
.end field

.field S:Landroidx/savedstate/a;

.field b:I

.field c:Landroid/os/Bundle;

.field d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;

.field f:Landroid/os/Bundle;

.field g:Landroidx/fragment/app/Fragment;

.field h:Ljava/lang/String;

.field i:I

.field private j:Ljava/lang/Boolean;

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:I

.field r:Landroidx/fragment/app/h;

.field s:Landroidx/fragment/app/f;

.field t:Landroidx/fragment/app/h;

.field u:Landroidx/fragment/app/Fragment;

.field v:I

.field w:I

.field x:Ljava/lang/String;

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->T:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Boolean;

    .line 6
    new-instance v0, Landroidx/fragment/app/h;

    invoke-direct {v0}, Landroidx/fragment/app/h;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->B:Z

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    .line 9
    sget-object v0, Landroidx/lifecycle/f$b;->f:Landroidx/lifecycle/f$b;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroidx/lifecycle/f$b;

    .line 10
    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/n;

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->W()V

    return-void
.end method

.method private W()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/j;

    invoke-direct {v0, p0}, Landroidx/lifecycle/j;-><init>(Landroidx/lifecycle/i;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/lifecycle/j;

    .line 2
    invoke-static {p0}, Landroidx/savedstate/a;->a(Landroidx/savedstate/b;)Landroidx/savedstate/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/savedstate/a;

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/lifecycle/j;

    new-instance v1, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/h;)V

    return-void
.end method

.method public static Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Landroidx/fragment/app/e;->d(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 5
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->c1(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p2, Landroidx/fragment/app/Fragment$c;

    const-string v0, ": calling Fragment constructor caused an exception"

    invoke-static {v1, p1, v0}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    .line 7
    new-instance p2, Landroidx/fragment/app/Fragment$c;

    const-string v0, ": could not find Fragment constructor"

    invoke-static {v1, p1, v0}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    .line 8
    new-instance p2, Landroidx/fragment/app/Fragment$c;

    invoke-static {v1, p1, v0}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    .line 9
    new-instance p2, Landroidx/fragment/app/Fragment$c;

    invoke-static {v1, p1, v0}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private v()Landroidx/fragment/app/Fragment$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/fragment/app/Fragment$b;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$b;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    return-object v0
.end method


# virtual methods
.method public final A()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public A0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final B()Landroidx/fragment/app/g;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " has not been attached yet."

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public B0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method public C()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public C0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method public D()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method E()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public E0(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method public F()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method F0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->s0()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->d0(Landroid/os/Bundle;)V

    .line 5
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->r()V

    return-void

    .line 7
    :cond_0
    new-instance p1, Landroidx/fragment/app/y;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-static {v0, p0, v1}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method G()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method G0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    new-instance v2, Landroidx/fragment/app/Fragment$a;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$a;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/h;->l(Landroidx/fragment/app/f;Landroidx/fragment/app/c;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->g0(Landroid/content/Context;)V

    .line 4
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Landroidx/fragment/app/y;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onAttach()"

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()Landroidx/fragment/app/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    return-object v0
.end method

.method H0(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->i0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->t(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public I()Landroid/view/LayoutInflater;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/f;->i()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Lr2;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method I0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->s0()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/savedstate/a;

    invoke-virtual {v1, p1}, Landroidx/savedstate/a;->c(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->j0(Landroid/os/Bundle;)V

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->N:Z

    .line 7
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/lifecycle/j;

    sget-object v0, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->f(Landroidx/lifecycle/f$a;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Landroidx/fragment/app/y;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onCreate()"

    invoke-static {v0, p0, v1}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method J()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$b;->d:I

    return v0
.end method

.method J0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->s0()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z

    .line 3
    new-instance v0, Landroidx/fragment/app/x;

    invoke-direct {v0}, Landroidx/fragment/app/x;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    invoke-virtual {p1}, Landroidx/fragment/app/x;->b()V

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/n;

    iget-object p2, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/n;->h(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    invoke-virtual {p1}, Landroidx/fragment/app/x;->c()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method K()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$b;->e:I

    return v0
.end method

.method K0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->w()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->f(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->N:Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n0()V

    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Landroidx/fragment/app/y;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDestroy()"

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method L()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$b;->f:I

    return v0
.end method

.method L0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->x()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->o0()V

    .line 7
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-static {p0}, La4;->b(Landroidx/lifecycle/i;)La4;

    move-result-object v1

    invoke-virtual {v1}, La4;->c()V

    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z

    return-void

    .line 10
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final M()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method M0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->p0()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/LayoutInflater;

    .line 4
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    .line 6
    iget-boolean v1, v0, Landroidx/fragment/app/h;->x:Z

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/h;->w()V

    .line 8
    new-instance v0, Landroidx/fragment/app/h;

    invoke-direct {v0}, Landroidx/fragment/app/h;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDetach()"

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public N()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$b;->h:Ljava/lang/Object;

    sget-object v2, Landroidx/fragment/app/Fragment;->T:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->F()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method N0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->y()V

    return-void
.end method

.method public final O()Landroid/content/res/Resources;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->W0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method O0(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->O(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public P()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$b;->g:Ljava/lang/Object;

    sget-object v2, Landroidx/fragment/app/Fragment;->T:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method P0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->R()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->f(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->v0()V

    .line 8
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onPause()"

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Q()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method Q0(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->T(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_0
    return v1
.end method

.method public R()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$b;->i:Ljava/lang/Object;

    sget-object v2, Landroidx/fragment/app/Fragment;->T:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Q()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method R0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/h;->k0(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x0()V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->U()V

    :cond_1
    return-void
.end method

.method S()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$b;->c:I

    return v0
.end method

.method S0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->s0()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->b0()Z

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->z0()V

    .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->f(Landroidx/lifecycle/f$a;)V

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->V()V

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->b0()Z

    return-void

    .line 12
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onResume()"

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final T(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method T0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->A0(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/savedstate/a;

    invoke-virtual {v0, p1}, Landroidx/savedstate/a;->d(Landroid/os/Bundle;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->x0()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final varargs U(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method U0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->s0()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->b0()Z

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B0()V

    .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->f(Landroidx/lifecycle/f$a;)V

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->W()V

    return-void

    .line 11
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onStart()"

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public V()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    return-object v0
.end method

.method V0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->Y()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->f(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C0()V

    .line 8
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onStop()"

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final W0()Landroid/content/Context;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to a context."

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method X()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->W()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->k:Z

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->l:Z

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->m:Z

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->n:Z

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->o:Z

    .line 8
    iput v0, p0, Landroidx/fragment/app/Fragment;->q:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 10
    new-instance v2, Landroidx/fragment/app/h;

    invoke-direct {v2}, Landroidx/fragment/app/h;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    .line 11
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    .line 12
    iput v0, p0, Landroidx/fragment/app/Fragment;->v:I

    .line 13
    iput v0, p0, Landroidx/fragment/app/Fragment;->w:I

    .line 14
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    .line 15
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    return-void
.end method

.method public final X0()Landroidx/fragment/app/g;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not associated with a fragment manager."

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Y0()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-static {v1, p0, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final Z0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->F:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->E0(Landroid/os/Bundle;)V

    .line 6
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    sget-object v0, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance p1, Landroidx/fragment/app/y;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-static {v0, p0, v1}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$b;->k:Z

    return v0
.end method

.method a1(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/Fragment$b;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$b;->a:Landroid/view/View;

    return-void
.end method

.method final b0()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->q:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b1(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/Fragment$b;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$b;->b:Landroid/animation/Animator;

    return-void
.end method

.method public final c0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c1(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/h;->l0()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    return-void
.end method

.method public d0(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method d1(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/Fragment$b;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$b;->k:Z

    return-void
.end method

.method public e0(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method e1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/Fragment$b;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$b;->d:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f0(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method f1(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/Fragment$b;

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    iput p1, v0, Landroidx/fragment/app/Fragment$b;->e:I

    .line 4
    iput p2, v0, Landroidx/fragment/app/Fragment$b;->f:I

    return-void
.end method

.method public g0(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/f;->c()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->f0(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method g1(Landroidx/fragment/app/Fragment$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/Fragment$b;

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$b;->j:Landroidx/fragment/app/Fragment$d;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 4
    check-cast p1, Landroidx/fragment/app/h$j;

    invoke-virtual {p1}, Landroidx/fragment/app/h$j;->c()V

    :cond_3
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/lifecycle/j;

    return-object v0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/savedstate/a;

    invoke-virtual {v0}, Landroidx/savedstate/a;->b()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/u;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/fragment/app/h;->h0(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h0()V
    .locals 0

    return-void
.end method

.method h1(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/Fragment$b;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$b;->c:I

    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i1(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->m(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j0(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz p1, :cond_0

    const-string v1, "android:support:fragments"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/h;->w0(Landroid/os/Parcelable;)V

    .line 4
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->u()V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    .line 6
    iget v1, p1, Landroidx/fragment/app/h;->p:I

    if-lt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/h;->u()V

    :cond_2
    return-void
.end method

.method public j1(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p0, p1, v1, v2}, Landroidx/fragment/app/f;->n(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment "

    const-string v1, " not attached to Activity"

    invoke-static {v0, p0, v1}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k0()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k1(Landroid/content/Intent;I)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, p1, p2, v1}, Landroidx/fragment/app/f;->n(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    invoke-static {p2, p0, v0}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l0()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public n0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method public o0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string p3, " not attached to an activity."

    invoke-static {p2, p0, p3}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method public p0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method public q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public r0()V
    .locals 0

    return-void
.end method

.method public s0()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method public t0(Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/f;->c()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->s0()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-static {p0, v0}, Landroidx/core/app/b;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " ("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Landroidx/fragment/app/Fragment;->v:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Landroidx/fragment/app/Fragment;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x7d

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()V
    .locals 0

    return-void
.end method

.method public v0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

.method w(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->f0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public w0()V
    .locals 0

    return-void
.end method

.method public final x()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/f;->c()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    :goto_0
    return-object v0
.end method

.method public x0()V
    .locals 0

    return-void
.end method

.method y()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$b;->a:Landroid/view/View;

    return-object v0
.end method

.method public y0()V
    .locals 0

    return-void
.end method

.method z()Landroid/animation/Animator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroidx/fragment/app/Fragment$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$b;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method public z0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    return-void
.end method

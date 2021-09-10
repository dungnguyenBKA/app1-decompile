.class Landroidx/appcompat/app/AppCompatDelegateImpl;
.super Landroidx/appcompat/app/i;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatDelegateImpl$c;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$g;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$i;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$h;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$f;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$j;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$d;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$k;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$e;
    }
.end annotation


# static fields
.field private static final a0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b0:Z

.field private static final c0:[I

.field private static d0:Z

.field private static final e0:Z


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field private F:Z

.field private G:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field private H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field M:Z

.field private N:I

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

.field private S:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

.field T:Z

.field U:I

.field private final V:Ljava/lang/Runnable;

.field private W:Z

.field private X:Landroid/graphics/Rect;

.field private Y:Landroid/graphics/Rect;

.field private Z:Landroidx/appcompat/app/AppCompatViewInflater;

.field final e:Ljava/lang/Object;

.field final f:Landroid/content/Context;

.field g:Landroid/view/Window;

.field private h:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

.field final i:Landroidx/appcompat/app/h;

.field j:Landroidx/appcompat/app/ActionBar;

.field k:Landroid/view/MenuInflater;

.field private l:Ljava/lang/CharSequence;

.field private m:Landroidx/appcompat/widget/m;

.field private n:Landroidx/appcompat/app/AppCompatDelegateImpl$d;

.field private o:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

.field p:Lk;

.field q:Landroidx/appcompat/widget/ActionBarContextView;

.field r:Landroid/widget/PopupWindow;

.field s:Ljava/lang/Runnable;

.field t:Lh3;

.field private u:Z

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    sput-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0:Ljava/util/Map;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sput-boolean v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Z

    new-array v5, v3, [I

    const v6, 0x1010054

    aput v6, v5, v2

    .line 3
    sput-object v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:[I

    if-lt v0, v1, :cond_1

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const/4 v2, 0x1

    .line 4
    :cond_1
    sput-boolean v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:Z

    if-eqz v4, :cond_2

    .line 5
    sget-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 7
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 8
    sput-boolean v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    :cond_2
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/h;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;Landroidx/appcompat/app/h;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/h;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/h;Ljava/lang/Object;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/i;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Lh3;

    const/16 v1, -0x64

    .line 5
    iput v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    .line 6
    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$b;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$b;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Ljava/lang/Runnable;

    .line 7
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Landroidx/appcompat/app/h;

    .line 9
    iput-object p4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    .line 10
    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 11
    instance-of p3, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p3, :cond_0

    .line 12
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    .line 13
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    .line 14
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/i;->g()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    .line 16
    :cond_2
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    if-ne p1, v1, :cond_3

    .line 17
    sget-object p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0:Ljava/util/Map;

    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    check-cast p1, Le0;

    invoke-virtual {p1, p3}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    .line 19
    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Le0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 20
    invoke-direct {p0, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->G(Landroid/view/Window;)V

    .line 21
    :cond_4
    invoke-static {}, Landroidx/appcompat/widget/e;->h()V

    return-void
.end method

.method private F(Z)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x17

    const/4 v7, 0x1

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_7

    if-eqz v0, :cond_4

    if-eq v0, v7, :cond_7

    if-eq v0, v5, :cond_7

    if-ne v0, v4, :cond_3

    .line 3
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-nez v2, :cond_2

    .line 4
    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 5
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 6
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->c()I

    move-result v3

    goto :goto_1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_5

    .line 9
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    const-class v8, Landroid/app/UiModeManager;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 10
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-nez v2, :cond_6

    .line 12
    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$i;

    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    .line 13
    invoke-static {v3}, Landroidx/appcompat/app/s;->a(Landroid/content/Context;)Landroidx/appcompat/app/s;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/s;)V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 14
    :cond_6
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 15
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->c()I

    move-result v3

    goto :goto_1

    :cond_7
    move v3, v0

    .line 16
    :cond_8
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v3, v7, :cond_a

    if-eq v3, v5, :cond_9

    move v5, v2

    goto :goto_2

    :cond_9
    const/16 v5, 0x20

    goto :goto_2

    :cond_a
    const/16 v5, 0x10

    .line 18
    :goto_2
    iget-boolean v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:Z

    if-nez v8, :cond_d

    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v8, v8, Landroid/app/Activity;

    if-eqz v8, :cond_d

    .line 19
    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_b

    const/4 v8, 0x0

    goto :goto_5

    .line 20
    :cond_b
    :try_start_0
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    iget-object v11, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    .line 21
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    invoke-virtual {v8, v9, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 23
    iget v8, v8, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    goto :goto_3

    :cond_c
    const/4 v8, 0x0

    :goto_3
    iput-boolean v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 24
    :catch_0
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Z

    .line 25
    :cond_d
    :goto_4
    iput-boolean v7, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:Z

    .line 26
    iget-boolean v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Z

    .line 27
    :goto_5
    sget-boolean v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:Z

    if-nez v9, :cond_e

    if-eq v5, v2, :cond_f

    :cond_e
    if-nez v8, :cond_f

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Z

    if-nez v2, :cond_f

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v2, v2, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_f

    .line 28
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 29
    iget v9, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, -0x31

    or-int/2addr v9, v5

    iput v9, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 30
    :try_start_1
    iget-object v9, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    check-cast v9, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v9, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_6

    :catch_1
    move-exception v2

    const-string v9, "AppCompatDelegate"

    const-string v10, "updateForNightMode. Calling applyOverrideConfiguration() failed with an exception. Will fall back to using Resources.updateConfiguration()"

    .line 31
    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    const/4 v2, 0x0

    .line 32
    :goto_6
    iget-object v9, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    if-nez v2, :cond_10

    if-eq v9, v5, :cond_10

    if-eqz p1, :cond_10

    if-nez v8, :cond_10

    .line 33
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v10, p1, Landroid/app/Activity;

    if-eqz v10, :cond_10

    .line 34
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Landroidx/core/app/a;->d(Landroid/app/Activity;)V

    const/4 v2, 0x1

    :cond_10
    if-nez v2, :cond_15

    if-eq v9, v5, :cond_15

    .line 35
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 36
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, -0x31

    or-int/2addr v5, v9

    iput v5, v2, Landroid/content/res/Configuration;->uiMode:I

    const/4 v5, 0x0

    .line 38
    invoke-virtual {p1, v2, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 39
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-ge v5, v9, :cond_11

    .line 40
    invoke-static {p1}, Landroidx/appcompat/app/p;->a(Landroid/content/res/Resources;)V

    .line 41
    :cond_11
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:I

    if-eqz p1, :cond_12

    .line 42
    iget-object v9, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->setTheme(I)V

    if-lt v5, v6, :cond_12

    .line 43
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:I

    invoke-virtual {p1, v5, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_12
    if-eqz v8, :cond_16

    .line 44
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_16

    .line 45
    check-cast p1, Landroid/app/Activity;

    .line 46
    instance-of v5, p1, Landroidx/lifecycle/i;

    if-eqz v5, :cond_14

    .line 47
    move-object v5, p1

    check-cast v5, Landroidx/lifecycle/i;

    invoke-interface {v5}, Landroidx/lifecycle/i;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object v5

    .line 48
    invoke-virtual {v5}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$b;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/f$b;->e:Landroidx/lifecycle/f$b;

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_13

    const/4 v1, 0x1

    :cond_13
    if-eqz v1, :cond_16

    .line 50
    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_7

    .line 51
    :cond_14
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    if-eqz v1, :cond_16

    .line 52
    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_7

    :cond_15
    move v7, v2

    :cond_16
    :goto_7
    if-eqz v7, :cond_17

    .line 53
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v1, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_17

    .line 54
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AppCompatActivity;->onNightModeChanged(I)V

    :cond_17
    if-nez v0, :cond_19

    .line 55
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-nez p1, :cond_18

    .line 56
    new-instance p1, Landroidx/appcompat/app/AppCompatDelegateImpl$i;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    .line 57
    invoke-static {v1}, Landroidx/appcompat/app/s;->a(Landroid/content/Context;)Landroidx/appcompat/app/s;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/s;)V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 58
    :cond_18
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 59
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->e()V

    goto :goto_8

    .line 60
    :cond_19
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-eqz p1, :cond_1a

    .line 61
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->a()V

    :cond_1a
    :goto_8
    if-ne v0, v4, :cond_1c

    .line 62
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-nez p1, :cond_1b

    .line 63
    new-instance p1, Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 64
    :cond_1b
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 65
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->e()V

    goto :goto_9

    .line 66
    :cond_1c
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-eqz p1, :cond_1d

    .line 67
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->a()V

    :cond_1d
    :goto_9
    return v7
.end method

.method private G(Landroid/view/Window;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    if-nez v2, :cond_1

    .line 4
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$f;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:[I

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/i0;->t(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/i0;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/i0;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/i0;->v()V

    .line 10
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private O()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez v0, :cond_1b

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->k:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x73

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x7c

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->w(I)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->w(I)Z

    :cond_1
    :goto_0
    const/16 v1, 0x74

    .line 8
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->w(I)Z

    :cond_2
    const/16 v1, 0x75

    .line 10
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 11
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->w(I)Z

    .line 12
    :cond_3
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->P()V

    .line 15
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 17
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    .line 18
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0b000c

    .line 19
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    goto/16 :goto_3

    .line 21
    :cond_4
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    if-eqz v0, :cond_8

    .line 22
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v7, 0x7f030009

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 24
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    .line 25
    new-instance v1, Lm;

    iget-object v7, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Lm;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    .line 27
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0017

    .line 28
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0800fe

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/m;

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->S()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Landroidx/appcompat/widget/m;->f(Landroid/view/Window$Callback;)V

    .line 31
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    if-eqz v1, :cond_6

    .line 32
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/m;->k(I)V

    .line 33
    :cond_6
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Z

    if-eqz v1, :cond_7

    .line 34
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/m;->k(I)V

    .line 35
    :cond_7
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Z

    if-eqz v1, :cond_c

    .line 36
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/m;->k(I)V

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    .line 37
    :cond_9
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0b0016

    .line 38
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v1, 0x7f0b0015

    .line 39
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 40
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_b

    .line 41
    new-instance v1, Landroidx/appcompat/app/j;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/j;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-static {v0, v1}, Lc3;->x(Landroid/view/View;Ly2;)V

    goto :goto_3

    .line 42
    :cond_b
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/q;

    new-instance v2, Landroidx/appcompat/app/k;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/k;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/q;->a(Landroidx/appcompat/widget/q$a;)V

    :cond_c
    :goto_3
    if-eqz v0, :cond_19

    .line 43
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-nez v1, :cond_d

    const v1, 0x7f0802be

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroid/widget/TextView;

    .line 45
    :cond_d
    sget v1, Landroidx/appcompat/widget/p0;->b:I

    .line 46
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "makeOptionalFitsSystemWindows"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_e

    .line 48
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_e
    new-array v2, v3, [Ljava/lang/Object;

    .line 49
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    :goto_4
    const v1, 0x7f080033

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 51
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_10

    .line 52
    :goto_5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_f

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 54
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 55
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_f
    const/4 v8, -0x1

    .line 56
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 57
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 58
    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_10

    .line 59
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_10
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 61
    new-instance v2, Landroidx/appcompat/app/l;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/l;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->h(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 62
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    .line 63
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_11

    .line 64
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6

    .line 65
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/CharSequence;

    .line 66
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 67
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz v1, :cond_12

    .line 68
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/m;->b(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 69
    :cond_12
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_13

    .line 70
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->p(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 71
    :cond_13
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    .line 72
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_14
    :goto_7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 74
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 78
    invoke-virtual {v0, v2, v6, v7, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->i(IIII)V

    .line 79
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/R$styleable;->k:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->f()Landroid/util/TypedValue;

    move-result-object v2

    const/16 v6, 0x7a

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 81
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->g()Landroid/util/TypedValue;

    move-result-object v2

    const/16 v6, 0x7b

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x78

    .line 82
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 83
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->d()Landroid/util/TypedValue;

    move-result-object v6

    .line 84
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    const/16 v2, 0x79

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 86
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->e()Landroid/util/TypedValue;

    move-result-object v6

    .line 87
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v2, 0x76

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 89
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->b()Landroid/util/TypedValue;

    move-result-object v6

    .line 90
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v2, 0x77

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 92
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->c()Landroid/util/TypedValue;

    move-result-object v6

    .line 93
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 94
    :cond_18
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 96
    iput-boolean v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    .line 97
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 98
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_1b

    .line 99
    invoke-direct {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->U(I)V

    goto :goto_8

    .line 100
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_8
    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->G(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private T()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Landroidx/appcompat/app/t;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/t;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Landroidx/appcompat/app/t;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/t;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->W:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->m(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private U(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    .line 2
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Ljava/lang/Runnable;

    .line 4
    sget v2, Lc3;->g:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    :cond_0
    return-void
.end method

.method private Z(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 12

    .line 1
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    iget v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 10
    :cond_5
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v5, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    if-eqz p2, :cond_19

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 13
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_19

    const/4 v5, -0x1

    goto/16 :goto_b

    :cond_7
    :goto_1
    if-nez p2, :cond_c

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 15
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz p2, :cond_8

    .line 16
    invoke-virtual {p2}, Landroidx/appcompat/app/ActionBar;->e()Landroid/content/Context;

    move-result-object p2

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_9

    .line 17
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    .line 18
    :cond_9
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 20
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v6, 0x7f030002

    .line 21
    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    .line 23
    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v6, 0x7f030247

    .line 24
    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 25
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_b

    .line 26
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_b
    const v4, 0x7f0f0186

    .line 27
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 28
    :goto_3
    new-instance v4, Lm;

    invoke-direct {v4, p2, v2}, Lm;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {v4}, Lm;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 30
    iput-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/content/Context;

    .line 31
    sget-object p2, Landroidx/appcompat/R$styleable;->k:[I

    invoke-virtual {v4, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v4, 0x54

    .line 32
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->b:I

    .line 33
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->d:I

    .line 34
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    new-instance p2, Landroidx/appcompat/app/AppCompatDelegateImpl$j;

    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/content/Context;

    invoke-direct {p2, p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$j;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    .line 36
    iput p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->c:I

    goto :goto_4

    .line 37
    :cond_c
    iget-boolean v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_d

    .line 38
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 39
    :cond_d
    :goto_4
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    if-eqz p2, :cond_e

    .line 40
    iput-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    goto :goto_5

    .line 41
    :cond_e
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    if-nez p2, :cond_f

    goto :goto_6

    .line 42
    :cond_f
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    if-nez p2, :cond_10

    .line 43
    new-instance p2, Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$k;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 44
    :cond_10
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 45
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/e;

    if-nez v4, :cond_11

    .line 46
    new-instance v4, Landroidx/appcompat/view/menu/e;

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/content/Context;

    const v6, 0x7f0b0010

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/e;

    .line 47
    invoke-virtual {v4, p2}, Landroidx/appcompat/view/menu/e;->g(Landroidx/appcompat/view/menu/m$a;)V

    .line 48
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p2, v4}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 49
    :cond_11
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/e;

    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2, v4}, Landroidx/appcompat/view/menu/e;->l(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p2

    .line 50
    check-cast p2, Landroid/view/View;

    iput-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    if-eqz p2, :cond_12

    :goto_5
    const/4 p2, 0x1

    goto :goto_7

    :cond_12
    :goto_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_1a

    .line 51
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    if-nez p2, :cond_13

    goto :goto_9

    .line 52
    :cond_13
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    if-eqz p2, :cond_14

    goto :goto_8

    .line 53
    :cond_14
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/e;->a()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_15

    :goto_8
    const/4 p2, 0x1

    goto :goto_a

    :cond_15
    :goto_9
    const/4 p2, 0x0

    :goto_a
    if-nez p2, :cond_16

    goto :goto_c

    .line 54
    :cond_16
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_17

    .line 55
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 56
    :cond_17
    iget v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->b:I

    .line 57
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 58
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 59
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_18

    .line 60
    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    :cond_18
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_19

    .line 63
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_19
    const/4 v5, -0x2

    .line 64
    :goto_b
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    .line 65
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 66
    iget v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 67
    iget v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 68
    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    :cond_1a
    :goto_c
    return-void
.end method

.method private a0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    .line 4
    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-nez p3, :cond_3

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_3
    return v1
.end method

.method private b0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    .line 7
    :cond_3
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    .line 8
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz v5, :cond_6

    .line 9
    invoke-interface {v5}, Landroidx/appcompat/widget/m;->d()V

    .line 10
    :cond_6
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    if-nez v5, :cond_19

    if-eqz v3, :cond_7

    .line 11
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    .line 12
    instance-of v5, v5, Landroidx/appcompat/app/q;

    if-nez v5, :cond_19

    .line 13
    :cond_7
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget-boolean v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    if-eqz v7, :cond_13

    :cond_8
    if-nez v5, :cond_e

    .line 14
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    .line 15
    iget v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    if-eqz v7, :cond_9

    if-ne v7, v4, :cond_d

    :cond_9
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz v4, :cond_d

    .line 16
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 17
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f030009

    .line 18
    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    const v9, 0x7f03000a

    if-eqz v8, :cond_a

    .line 20
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 21
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 22
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 23
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    .line 24
    :cond_a
    invoke-virtual {v7, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    .line 25
    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_c

    if-nez v8, :cond_b

    .line 26
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 27
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 28
    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v8, :cond_d

    .line 29
    new-instance v4, Lm;

    invoke-direct {v4, v5, v1}, Lm;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-virtual {v4}, Lm;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    .line 31
    :cond_d
    new-instance v4, Landroidx/appcompat/view/menu/g;

    invoke-direct {v4, v5}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v4, p0}, Landroidx/appcompat/view/menu/g;->G(Landroidx/appcompat/view/menu/g$a;)V

    .line 33
    invoke-virtual {p1, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroidx/appcompat/view/menu/g;)V

    .line 34
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_e

    return v1

    :cond_e
    if-eqz v3, :cond_10

    .line 35
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz v4, :cond_10

    .line 36
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/appcompat/app/AppCompatDelegateImpl$d;

    if-nez v5, :cond_f

    .line 37
    new-instance v5, Landroidx/appcompat/app/AppCompatDelegateImpl$d;

    invoke-direct {v5, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/appcompat/app/AppCompatDelegateImpl$d;

    .line 38
    :cond_f
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    iget-object v7, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/appcompat/app/AppCompatDelegateImpl$d;

    invoke-interface {v4, v5, v7}, Landroidx/appcompat/widget/m;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 39
    :cond_10
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->R()V

    .line 40
    iget v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 41
    invoke-virtual {p1, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroidx/appcompat/view/menu/g;)V

    if-eqz v3, :cond_11

    .line 42
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_11

    .line 43
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/appcompat/app/AppCompatDelegateImpl$d;

    invoke-interface {p1, v6, p2}, Landroidx/appcompat/widget/m;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    :cond_11
    return v1

    .line 44
    :cond_12
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    .line 45
    :cond_13
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->R()V

    .line 46
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Landroid/os/Bundle;

    if-eqz v4, :cond_14

    .line 47
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/g;->C(Landroid/os/Bundle;)V

    .line 48
    iput-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Landroid/os/Bundle;

    .line 49
    :cond_14
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v3, :cond_15

    .line 50
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz p2, :cond_15

    .line 51
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/appcompat/app/AppCompatDelegateImpl$d;

    invoke-interface {p2, v6, v0}, Landroidx/appcompat/widget/m;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 52
    :cond_15
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->Q()V

    return v1

    :cond_16
    if-eqz p2, :cond_17

    .line 53
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_17
    const/4 p2, -0x1

    .line 54
    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_18

    const/4 p2, 0x1

    goto :goto_4

    :cond_18
    const/4 p2, 0x0

    :goto_4
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 56
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    .line 57
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->Q()V

    .line 58
    :cond_19
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 59
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    .line 60
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    return v2
.end method

.method private d0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    .line 4
    instance-of v1, v0, Landroidx/appcompat/app/t;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroid/view/MenuInflater;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->h()V

    :cond_1
    if-eqz p1, :cond_3

    .line 7
    new-instance v0, Landroidx/appcompat/app/q;

    .line 8
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 9
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/CharSequence;

    .line 11
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/app/q;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 12
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    .line 13
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    .line 14
    iget-object v0, v0, Landroidx/appcompat/app/q;->c:Landroid/view/Window$Callback;

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1

    .line 16
    :cond_3
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    .line 17
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 18
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->k()V

    return-void

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:I

    return-void
.end method

.method public final C(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/m;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->p(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public D(Lk$a;)Lk;
    .locals 7

    if-eqz p1, :cond_11

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lk;->c()V

    .line 3
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lk$a;)V

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->r(Lk$a;)Lk;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    if-eqz p1, :cond_1

    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Landroidx/appcompat/app/h;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, p1}, Landroidx/appcompat/app/h;->onSupportActionModeStarted(Lk;)V

    .line 9
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    if-nez p1, :cond_10

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N()V

    .line 11
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lk;->c()V

    .line 13
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Landroidx/appcompat/app/h;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v2, :cond_3

    .line 14
    :try_start_0
    invoke-interface {p1, v0}, Landroidx/appcompat/app/h;->onWindowStartingSupportActionMode(Lk$a;)Lk;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 15
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    goto/16 :goto_6

    .line 16
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_9

    .line 17
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    if-eqz p1, :cond_6

    .line 18
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 19
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f030009

    .line 20
    invoke-virtual {v4, v5, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_5

    .line 22
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 23
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 24
    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 25
    new-instance v4, Lm;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-direct {v4, v6, v3}, Lm;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {v4}, Lm;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 27
    :cond_5
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    .line 28
    :goto_1
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    .line 29
    invoke-direct {v5, v4, v1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    .line 31
    new-instance v5, Landroid/widget/PopupWindow;

    const v6, 0x7f030017

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 32
    invoke-static {v5, v6}, Landroidx/core/widget/c;->i(Landroid/widget/PopupWindow;I)V

    .line 33
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 35
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f030003

    invoke-virtual {v5, v6, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 36
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 37
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 38
    invoke-static {p1, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    .line 39
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, p1}, Landroidx/appcompat/widget/ActionBarContextView;->l(I)V

    .line 40
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 41
    new-instance p1, Landroidx/appcompat/app/m;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/m;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Ljava/lang/Runnable;

    goto :goto_3

    .line 42
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    const v4, 0x7f080040

    .line 43
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz p1, :cond_9

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 45
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v4, :cond_7

    .line 46
    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->e()Landroid/content/Context;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-object v4, v1

    :goto_2
    if-nez v4, :cond_8

    .line 47
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    .line 48
    :cond_8
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ViewStubCompat;->b(Landroid/view/LayoutInflater;)V

    .line 49
    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    .line 50
    :cond_9
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_e

    .line 51
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N()V

    .line 52
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    .line 53
    new-instance p1, Ln;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    invoke-direct {p1, v4, v5, v0, v2}, Ln;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lk$a;Z)V

    .line 54
    invoke-virtual {p1}, Ln;->e()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->b(Lk;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    invoke-virtual {p1}, Ln;->k()V

    .line 56
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->h(Lk;)V

    .line 57
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    .line 58
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_b

    .line 59
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 60
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lc3;->a(Landroid/view/View;)Lh3;

    move-result-object p1

    invoke-virtual {p1, v0}, Lh3;->a(F)Lh3;

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Lh3;

    .line 61
    new-instance v0, Landroidx/appcompat/app/n;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/n;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-virtual {p1, v0}, Lh3;->f(Li3;)Lh3;

    goto :goto_5

    .line 62
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 63
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 65
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_c

    .line 66
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lc3;->t(Landroid/view/View;)V

    .line 67
    :cond_c
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_e

    .line 68
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 69
    :cond_d
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    .line 70
    :cond_e
    :goto_6
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    if-eqz p1, :cond_f

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Landroidx/appcompat/app/h;

    if-eqz v0, :cond_f

    .line 71
    invoke-interface {v0, p1}, Landroidx/appcompat/app/h;->onSupportActionModeStarted(Lk;)V

    .line 72
    :cond_f
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    .line 73
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    .line 74
    :cond_10
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    return-object p1

    .line 75
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Z)Z

    move-result v0

    return v0
.end method

.method H(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object p3, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-boolean p2, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez p2, :cond_2

    .line 4
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-virtual {p2}, Lr;->a()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    return-void
.end method

.method I(Landroidx/appcompat/view/menu/g;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    invoke-interface {v0}, Landroidx/appcompat/widget/m;->l()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Z

    return-void
.end method

.method J(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->I(Landroidx/appcompat/view/menu/g;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 7
    iget p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->H(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 9
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    .line 10
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 11
    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:Landroid/view/View;

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 13
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-ne p2, p1, :cond_2

    .line 14
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    :cond_2
    return-void
.end method

.method K()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/m;->l()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->N()V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 10
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->e(Z)V

    :cond_3
    return-void
.end method

.method L(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v1, v0, Lq2$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Landroidx/appcompat/app/o;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p1}, Lq2;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-virtual {v0}, Lr;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_16

    .line 9
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 10
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-nez v1, :cond_16

    .line 11
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    goto/16 :goto_8

    .line 12
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Z

    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 13
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    .line 14
    :cond_a
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz v1, :cond_c

    .line 16
    invoke-interface {v1}, Landroidx/appcompat/widget/m;->e()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    .line 17
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    .line 18
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    invoke-interface {v1}, Landroidx/appcompat/widget/m;->c()Z

    move-result v1

    if-nez v1, :cond_b

    .line 19
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v1, :cond_f

    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 20
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    invoke-interface {p1}, Landroidx/appcompat/widget/m;->j()Z

    move-result p1

    goto :goto_5

    .line 21
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    invoke-interface {p1}, Landroidx/appcompat/widget/m;->i()Z

    move-result p1

    goto :goto_5

    .line 22
    :cond_c
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-nez v1, :cond_10

    iget-boolean v3, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    if-eqz v3, :cond_d

    goto :goto_4

    .line 23
    :cond_d
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    if-eqz v1, :cond_f

    .line 24
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    if-eqz v1, :cond_e

    .line 25
    iput-boolean v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 26
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    .line 27
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    .line 28
    :cond_10
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    move p1, v1

    :goto_5
    if-eqz p1, :cond_16

    .line 29
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    .line 30
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_8

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 32
    :cond_12
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Z

    .line 33
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Z

    .line 34
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 35
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_16

    .line 36
    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_8

    .line 37
    :cond_13
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Lk;

    if-eqz p1, :cond_14

    .line 38
    invoke-virtual {p1}, Lk;->c()V

    goto :goto_6

    .line 39
    :cond_14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 40
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_15

    .line 41
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->b()Z

    move-result p1

    if-eqz p1, :cond_15

    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_7

    :cond_16
    :goto_8
    return v2
.end method

.method M(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/g;->E(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Landroid/os/Bundle;

    .line 7
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->R()V

    .line 8
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->clear()V

    :cond_1
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    .line 10
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 11
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 13
    iput-boolean p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method N()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Lh3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lh3;->b()V

    :cond_0
    return-void
.end method

.method Q(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 3
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 4
    iget-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    new-array v1, v1, [Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_1

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_1
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v0, v1

    .line 5
    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    .line 6
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method final S()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method W(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/ActionBar;->i(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p1, :cond_1

    .line 7
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    :cond_1
    return v1

    .line 8
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p2

    .line 12
    iput-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    if-eqz p2, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method X(I)V
    .locals 1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->c(Z)V

    :cond_0
    return-void
.end method

.method Y(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->c(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 5
    iget-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->q()Landroidx/appcompat/view/menu/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/g;)V
    .locals 5

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/appcompat/widget/m;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    .line 3
    invoke-interface {p1}, Landroidx/appcompat/widget/m;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->S()Landroid/view/Window$Callback;

    move-result-object p1

    .line 5
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    invoke-interface {v2}, Landroidx/appcompat/widget/m;->c()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    invoke-interface {v0}, Landroidx/appcompat/widget/m;->i()Z

    .line 7
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 9
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 10
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v2, :cond_4

    .line 11
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 15
    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/View;

    .line 16
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/widget/m;

    invoke-interface {p1}, Landroidx/appcompat/widget/m;->j()Z

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->R(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 20
    iput-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 21
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-virtual {p1}, Lr;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method final c0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lc3;->g:I

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Z)Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Z

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method e0(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 6
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:Landroid/graphics/Rect;

    .line 8
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroid/graphics/Rect;

    .line 9
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:Landroid/graphics/Rect;

    .line 10
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Landroidx/appcompat/widget/p0;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 13
    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 14
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_4

    .line 15
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 16
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    if-nez v2, :cond_2

    .line 17
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    .line 18
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050007

    .line 19
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 20
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 23
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_3

    .line 24
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 26
    :goto_2
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 27
    :goto_3
    iget-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Z

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    const/4 p1, 0x0

    :cond_6
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_4

    .line 28
    :cond_7
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_8

    .line 29
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_a

    .line 30
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 31
    :cond_a
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    if-eqz v0, :cond_c

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const/16 v1, 0x8

    .line 32
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return p1
.end method

.method public final f()Landroidx/appcompat/app/a;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$c;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    return v0
.end method

.method public h()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 3
    new-instance v0, Lp;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->e()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroid/view/MenuInflater;

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public i()Landroidx/appcompat/app/ActionBar;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0, p0}, Lr2;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->U(I)V

    return-void
.end method

.method public n(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->g(Landroid/content/res/Configuration;)V

    .line 5
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/e;->b()Landroidx/appcompat/widget/e;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/e;->g(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Z)Z

    return-void
.end method

.method public o(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Z

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Z)Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->P()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/app/b;->R(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-nez v0, :cond_0

    .line 9
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->W:Z

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->m(Z)V

    .line 11
    :cond_1
    :goto_1
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/R$styleable;->k:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x72

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    const-class v2, Landroidx/appcompat/app/AppCompatViewInflater;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatViewInflater;

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatViewInflater;

    .line 12
    :cond_2
    :goto_1
    sget-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Z

    if-eqz v0, :cond_8

    .line 13
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 14
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_7

    goto :goto_3

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    if-nez v0, :cond_4

    goto :goto_4

    .line 15
    :cond_4
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :goto_2
    if-nez v0, :cond_5

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    if-eq v0, v3, :cond_7

    .line 16
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_7

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 17
    sget v5, Lc3;->g:I

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_7
    :goto_4
    move v7, v1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    .line 20
    :goto_5
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatViewInflater;

    sget-boolean v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Z

    const/4 v9, 0x1

    .line 21
    invoke-static {}, Landroidx/appcompat/widget/o0;->b()Z

    move-result v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 22
    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/appcompat/app/i;->m(Landroidx/appcompat/app/i;)V

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->h()V

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->a()V

    .line 10
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->a()V

    :cond_3
    return-void
.end method

.method public q(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    :cond_0
    return-void
.end method

.method public s(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    const/16 v0, -0x64

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0:Ljava/util/Map;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p1, Le0;

    invoke-virtual {p1, v0, v1}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->E()Z

    .line 3
    invoke-static {p0}, Landroidx/appcompat/app/i;->l(Landroidx/appcompat/app/i;)V

    return-void
.end method

.method public u()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    .line 2
    invoke-static {p0}, Landroidx/appcompat/app/i;->m(Landroidx/appcompat/app/i;)V

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T()V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->a()V

    .line 9
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;->a()V

    :cond_2
    return-void
.end method

.method public w(I)Z
    .locals 5

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 3
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    .line 5
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 7
    :cond_4
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0()V

    .line 8
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    return v4

    .line 9
    :cond_5
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0()V

    .line 10
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    return v4

    .line 11
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0()V

    .line 12
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Z

    return v4

    .line 13
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0()V

    .line 14
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Z

    return v4

    .line 15
    :cond_8
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0()V

    .line 16
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Z

    return v4

    .line 17
    :cond_9
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0()V

    .line 18
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    return v4
.end method

.method public x(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-virtual {p1}, Lr;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public y(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-virtual {p1}, Lr;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public z(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-virtual {p1}, Lr;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

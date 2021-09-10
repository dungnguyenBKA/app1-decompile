.class public Landroidx/browser/customtabs/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lb;

.field private final b:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lb;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/browser/customtabs/b;->a:Lb;

    .line 3
    iput-object p2, p0, Landroidx/browser/customtabs/b;->b:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public a(Landroidx/browser/customtabs/a;)Landroidx/browser/customtabs/e;
    .locals 3

    .line 1
    new-instance p1, Landroidx/browser/customtabs/b$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/browser/customtabs/b$a;-><init>(Landroidx/browser/customtabs/b;Landroidx/browser/customtabs/a;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/b;->a:Lb;

    invoke-interface {v1, p1}, Lb;->z(La;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/e;

    iget-object v1, p0, Landroidx/browser/customtabs/b;->a:Lb;

    iget-object v2, p0, Landroidx/browser/customtabs/b;->b:Landroid/content/ComponentName;

    invoke-direct {v0, v1, p1, v2}, Landroidx/browser/customtabs/e;-><init>(Lb;La;Landroid/content/ComponentName;)V

    :catch_0
    return-object v0
.end method

.method public b(J)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/b;->a:Lb;

    invoke-interface {v0, p1, p2}, Lb;->r(J)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

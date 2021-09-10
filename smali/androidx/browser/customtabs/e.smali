.class public final Landroidx/browser/customtabs/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lb;

.field private final b:La;

.field private final c:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lb;La;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/browser/customtabs/e;->a:Lb;

    .line 3
    iput-object p2, p0, Landroidx/browser/customtabs/e;->b:La;

    .line 4
    iput-object p3, p0, Landroidx/browser/customtabs/e;->c:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/e;->b:La;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/e;->c:Landroid/content/ComponentName;

    return-object v0
.end method

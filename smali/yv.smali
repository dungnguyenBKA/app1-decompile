.class public Lyv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lyv;


# instance fields
.field private a:Lxv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyv;

    invoke-direct {v0}, Lyv;-><init>()V

    sput-object v0, Lyv;->b:Lyv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lyv;->a:Lxv;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lxv;
    .locals 2

    .line 1
    sget-object v0, Lyv;->b:Lyv;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lyv;->a:Lxv;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    :goto_0
    new-instance v1, Lxv;

    invoke-direct {v1, p0}, Lxv;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lyv;->a:Lxv;

    .line 6
    :cond_1
    iget-object p0, v0, Lyv;->a:Lxv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.class public Lad0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lwc0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lad0;->a:Ljava/lang/String;

    .line 2
    const-class v0, Lzc0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lad0;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lad0;->c:Z

    .line 4
    sput-boolean v0, Lad0;->d:Z

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lad0;->c:Z

    return p0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lad0;->d:Z

    return p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;Lyc0;)V
    .locals 4

    const-class v0, Lad0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lad0;->c:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lad0;->c:Z

    .line 3
    sget-boolean v2, Lad0;->d:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 5
    sput-boolean v3, Lad0;->c:Z

    .line 6
    invoke-interface {p2, v3}, Lyc0;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lad0$a;

    invoke-direct {v2, p0, p2}, Lad0$a;-><init>(Landroid/content/Context;Lyc0;)V

    invoke-static {p1, v1, v2}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    sput-boolean v3, Lad0;->c:Z

    .line 10
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 11
    invoke-interface {p2, v3}, Lyc0;->a(Z)V

    goto :goto_0

    .line 12
    :cond_1
    sput-boolean v3, Lad0;->c:Z

    .line 13
    invoke-interface {p2, v1}, Lyc0;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

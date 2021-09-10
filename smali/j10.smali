.class public Lj10;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj10$c;,
        Lj10$b;
    }
.end annotation


# static fields
.field private static final d:Lj10$c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lj10$b;

.field private c:Li10;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj10$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj10$c;-><init>(Lj10$a;)V

    sput-object v0, Lj10;->d:Lj10$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lj10$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj10;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lj10;->b:Lj10$b;

    .line 4
    sget-object p1, Lj10;->d:Lj10$c;

    iput-object p1, p0, Lj10;->c:Li10;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lj10;->d(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lj10$b;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lj10;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lj10;->b:Lj10$b;

    .line 9
    sget-object p1, Lj10;->d:Lj10$c;

    iput-object p1, p0, Lj10;->c:Li10;

    .line 10
    invoke-virtual {p0, p3}, Lj10;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj10;->c:Li10;

    invoke-interface {v0}, Li10;->d()V

    return-void
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lj10;->c:Li10;

    invoke-interface {v0}, Li10;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj10;->c:Li10;

    invoke-interface {v0}, Li10;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj10;->c:Li10;

    invoke-interface {v0}, Li10;->a()V

    .line 2
    sget-object v0, Lj10;->d:Lj10$c;

    iput-object v0, p0, Lj10;->c:Li10;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lj10;->a:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "com.crashlytics.CollectCustomLogs"

    .line 4
    invoke-static {v0, v2, v1}, Lsz;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v0, "Preferences requested no custom logs. Aborting log file creation."

    invoke-virtual {p1, v0}, Laz;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "crashlytics-userlog-"

    const-string v1, ".temp"

    .line 6
    invoke-static {v0, p1, v1}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lj10;->b:Lj10$b;

    invoke-interface {v1}, Lj10$b;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 p1, 0x10000

    .line 8
    new-instance v1, Lm10;

    invoke-direct {v1, v0, p1}, Lm10;-><init>(Ljava/io/File;I)V

    iput-object v1, p0, Lj10;->c:Li10;

    return-void
.end method

.method public e(JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj10;->c:Li10;

    invoke-interface {v0, p1, p2, p3}, Li10;->e(JLjava/lang/String;)V

    return-void
.end method

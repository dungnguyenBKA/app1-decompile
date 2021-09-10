.class final Landroidx/work/impl/g;
.super Landroidx/room/g$b;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh4;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lh4;->b()V

    .line 2
    :try_start_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lh4;->execSQL(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lh4;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p1}, Lh4;->G()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lh4;->G()V

    .line 5
    throw v0
.end method

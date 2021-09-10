.class Ln4$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final b:[Lm4;

.field final c:Li4$a;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lm4;Li4$a;)V
    .locals 6

    .line 1
    iget v4, p4, Li4$a;->a:I

    new-instance v5, Ln4$a$a;

    invoke-direct {v5, p4, p3}, Ln4$a$a;-><init>(Li4$a;[Lm4;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 2
    iput-object p4, p0, Ln4$a;->c:Li4$a;

    .line 3
    iput-object p3, p0, Ln4$a;->b:[Lm4;

    return-void
.end method

.method static o([Lm4;Landroid/database/sqlite/SQLiteDatabase;)Lm4;
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Lm4;->j(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    new-instance v1, Lm4;

    invoke-direct {v1, p1}, Lm4;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v1, p0, v0

    .line 4
    :cond_1
    aget-object p0, p0, v0

    return-object p0
.end method


# virtual methods
.method declared-synchronized L()Lh4;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Ln4$a;->d:Z

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Ln4$a;->d:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Ln4$a;->close()V

    .line 5
    invoke-virtual {p0}, Ln4$a;->L()Lh4;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ln4$a;->j(Landroid/database/sqlite/SQLiteDatabase;)Lm4;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2
    iget-object v0, p0, Ln4$a;->b:[Lm4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j(Landroid/database/sqlite/SQLiteDatabase;)Lm4;
    .locals 1

    .line 1
    iget-object v0, p0, Ln4$a;->b:[Lm4;

    invoke-static {v0, p1}, Ln4$a;->o([Lm4;Landroid/database/sqlite/SQLiteDatabase;)Lm4;

    move-result-object p1

    return-object p1
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln4$a;->c:Li4$a;

    .line 2
    iget-object v1, p0, Ln4$a;->b:[Lm4;

    invoke-static {v1, p1}, Ln4$a;->o([Lm4;Landroid/database/sqlite/SQLiteDatabase;)Lm4;

    .line 3
    check-cast v0, Landroidx/room/h;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln4$a;->c:Li4$a;

    .line 2
    iget-object v1, p0, Ln4$a;->b:[Lm4;

    invoke-static {v1, p1}, Ln4$a;->o([Lm4;Landroid/database/sqlite/SQLiteDatabase;)Lm4;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Li4$a;->c(Lh4;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln4$a;->d:Z

    .line 2
    iget-object v0, p0, Ln4$a;->c:Li4$a;

    .line 3
    iget-object v1, p0, Ln4$a;->b:[Lm4;

    invoke-static {v1, p1}, Ln4$a;->o([Lm4;Landroid/database/sqlite/SQLiteDatabase;)Lm4;

    move-result-object p1

    .line 4
    check-cast v0, Landroidx/room/h;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/h;->e(Lh4;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln4$a;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln4$a;->c:Li4$a;

    .line 3
    iget-object v1, p0, Ln4$a;->b:[Lm4;

    invoke-static {v1, p1}, Ln4$a;->o([Lm4;Landroid/database/sqlite/SQLiteDatabase;)Lm4;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Li4$a;->d(Lh4;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln4$a;->d:Z

    .line 2
    iget-object v0, p0, Ln4$a;->c:Li4$a;

    .line 3
    iget-object v1, p0, Ln4$a;->b:[Lm4;

    invoke-static {v1, p1}, Ln4$a;->o([Lm4;Landroid/database/sqlite/SQLiteDatabase;)Lm4;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Li4$a;->e(Lh4;II)V

    return-void
.end method

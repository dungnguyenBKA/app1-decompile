.class public final Ly5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx5;


# instance fields
.field private final a:Landroidx/room/g;

.field private final b:Landroidx/room/b;

.field private final c:Landroidx/room/j;


# direct methods
.method public constructor <init>(Landroidx/room/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly5;->a:Landroidx/room/g;

    .line 3
    new-instance v0, Ly5$a;

    invoke-direct {v0, p0, p1}, Ly5$a;-><init>(Ly5;Landroidx/room/g;)V

    iput-object v0, p0, Ly5;->b:Landroidx/room/b;

    .line 4
    new-instance v0, Ly5$b;

    invoke-direct {v0, p0, p1}, Ly5$b;-><init>(Ly5;Landroidx/room/g;)V

    iput-object v0, p0, Ly5;->c:Landroidx/room/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lw5;
    .locals 4

    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/i;->L(Ljava/lang/String;I)Landroidx/room/i;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/i;->N(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/i;->g(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {p1}, Landroidx/room/g;->b()V

    .line 5
    iget-object p1, p0, Ly5;->a:Landroidx/room/g;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Le4;->a(Landroidx/room/g;Lk4;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "work_spec_id"

    .line 6
    invoke-static {p1, v1}, Landroidx/core/app/b;->I(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "system_id"

    .line 7
    invoke-static {p1, v2}, Landroidx/core/app/b;->I(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 11
    new-instance v3, Lw5;

    invoke-direct {v3, v1, v2}, Lw5;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 12
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v0}, Landroidx/room/i;->S()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 15
    invoke-virtual {v0}, Landroidx/room/i;->S()V

    .line 16
    throw v1
.end method

.method public b(Lw5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {v0}, Landroidx/room/g;->b()V

    .line 2
    iget-object v0, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {v0}, Landroidx/room/g;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Ly5;->b:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->e(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {p1}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {p1}, Landroidx/room/g;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 6
    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {v0}, Landroidx/room/g;->b()V

    .line 2
    iget-object v0, p0, Ly5;->c:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->a()Ll4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lj4;->N(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lj4;->g(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {p1}, Landroidx/room/g;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ll4;->k()I

    .line 7
    iget-object p1, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {p1}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {p1}, Landroidx/room/g;->g()V

    .line 9
    iget-object p1, p0, Ly5;->c:Landroidx/room/j;

    invoke-virtual {p1, v0}, Landroidx/room/j;->c(Ll4;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Ly5;->a:Landroidx/room/g;

    invoke-virtual {v1}, Landroidx/room/g;->g()V

    .line 11
    iget-object v1, p0, Ly5;->c:Landroidx/room/j;

    invoke-virtual {v1, v0}, Landroidx/room/j;->c(Ll4;)V

    .line 12
    throw p1
.end method

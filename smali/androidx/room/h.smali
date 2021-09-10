.class public Landroidx/room/h;
.super Li4$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/h$a;
    }
.end annotation


# instance fields
.field private b:Landroidx/room/a;

.field private final c:Landroidx/room/h$a;


# direct methods
.method public constructor <init>(Landroidx/room/a;Landroidx/room/h$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p3, p2, Landroidx/room/h$a;->a:I

    invoke-direct {p0, p3}, Li4$a;-><init>(I)V

    .line 2
    iput-object p1, p0, Landroidx/room/h;->b:Landroidx/room/a;

    .line 3
    iput-object p2, p0, Landroidx/room/h;->c:Landroidx/room/h$a;

    return-void
.end method

.method private f(Lh4;)V
    .locals 2

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 1
    invoke-interface {p1, v0}, Lh4;->execSQL(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "c84d23ade98552f1cec71088c1f0794c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lh4;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lh4;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/h;->f(Lh4;)V

    .line 2
    iget-object v0, p0, Landroidx/room/h;->c:Landroidx/room/h$a;

    invoke-virtual {v0, p1}, Landroidx/room/h$a;->a(Lh4;)V

    .line 3
    iget-object v0, p0, Landroidx/room/h;->c:Landroidx/room/h$a;

    invoke-virtual {v0, p1}, Landroidx/room/h$a;->c(Lh4;)V

    return-void
.end method

.method public d(Lh4;)V
    .locals 4

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 1
    invoke-interface {p1, v0}, Lh4;->D(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Lg4;

    const-string v3, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v3}, Lg4;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lh4;->M(Lk4;)Landroid/database/Cursor;

    move-result-object v1

    .line 5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 7
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_2
    move-object v2, v0

    :goto_2
    const-string v1, "c84d23ade98552f1cec71088c1f0794c"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "1db8206f0da6aa81bbdd2d99a82d9e14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    :goto_3
    iget-object v1, p0, Landroidx/room/h;->c:Landroidx/room/h$a;

    invoke-virtual {v1, p1}, Landroidx/room/h$a;->d(Lh4;)V

    .line 11
    iput-object v0, p0, Landroidx/room/h;->b:Landroidx/room/a;

    return-void

    :catchall_1
    move-exception p1

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public e(Lh4;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/h;->b:Landroidx/room/a;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Landroidx/room/a;->d:Landroidx/room/g$d;

    invoke-virtual {v0, p2, p3}, Landroidx/room/g$d;->b(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/room/h;->c:Landroidx/room/h$a;

    invoke-virtual {v1, p1}, Landroidx/room/h$a;->f(Lh4;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld4;

    .line 5
    invoke-virtual {v1, p1}, Ld4;->a(Lh4;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/room/h;->c:Landroidx/room/h$a;

    invoke-virtual {v0, p1}, Landroidx/room/h$a;->g(Lh4;)V

    .line 7
    iget-object v0, p0, Landroidx/room/h;->c:Landroidx/room/h$a;

    invoke-virtual {v0, p1}, Landroidx/room/h$a;->e(Lh4;)V

    .line 8
    invoke-direct {p0, p1}, Landroidx/room/h;->f(Lh4;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Landroidx/room/h;->b:Landroidx/room/a;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, p2, p3}, Landroidx/room/a;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object p2, p0, Landroidx/room/h;->c:Landroidx/room/h$a;

    invoke-virtual {p2, p1}, Landroidx/room/h$a;->b(Lh4;)V

    .line 12
    iget-object p2, p0, Landroidx/room/h;->c:Landroidx/room/h$a;

    invoke-virtual {p2, p1}, Landroidx/room/h$a;->a(Lh4;)V

    goto :goto_2

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

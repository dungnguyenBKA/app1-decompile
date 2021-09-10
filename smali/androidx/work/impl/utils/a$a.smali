.class final Landroidx/work/impl/utils/a$a;
.super Landroidx/work/impl/utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/a;->b(Ljava/lang/String;Landroidx/work/impl/i;)Landroidx/work/impl/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroidx/work/impl/i;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/work/impl/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/utils/a$a;->c:Landroidx/work/impl/i;

    iput-object p2, p0, Landroidx/work/impl/utils/a$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/work/impl/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method d()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/a$a;->c:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->i()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/room/g;->c()V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v1

    .line 4
    iget-object v2, p0, Landroidx/work/impl/utils/a$a;->d:Ljava/lang/String;

    check-cast v1, Le6;

    invoke-virtual {v1, v2}, Le6;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Landroidx/work/impl/utils/a$a;->c:Landroidx/work/impl/i;

    invoke-virtual {p0, v3, v2}, Landroidx/work/impl/utils/a;->a(Landroidx/work/impl/i;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 9
    iget-object v0, p0, Landroidx/work/impl/utils/a$a;->c:Landroidx/work/impl/i;

    .line 10
    invoke-virtual {v0}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroidx/work/impl/i;->i()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Landroidx/work/impl/i;->h()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-static {v1, v2, v0}, Landroidx/work/impl/e;->b(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v1

    .line 14
    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 15
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.class public Landroidx/room/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li4$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/room/g$d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Landroidx/room/g$c;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Li4$c;Landroidx/room/g$d;Ljava/util/List;ZLandroidx/room/g$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Li4$c;",
            "Landroidx/room/g$d;",
            "Ljava/util/List<",
            "Landroidx/room/g$b;",
            ">;Z",
            "Landroidx/room/g$c;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Landroidx/room/a;->a:Li4$c;

    .line 3
    iput-object p1, p0, Landroidx/room/a;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Landroidx/room/a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroidx/room/a;->d:Landroidx/room/g$d;

    .line 6
    iput-object p5, p0, Landroidx/room/a;->e:Ljava/util/List;

    .line 7
    iput-boolean p6, p0, Landroidx/room/a;->f:Z

    .line 8
    iput-object p7, p0, Landroidx/room/a;->g:Landroidx/room/g$c;

    .line 9
    iput-object p8, p0, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p9, p0, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    .line 11
    iput-boolean p11, p0, Landroidx/room/a;->j:Z

    .line 12
    iput-boolean p12, p0, Landroidx/room/a;->k:Z

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Landroidx/room/a;->k:Z

    if-eqz p1, :cond_1

    return v1

    .line 2
    :cond_1
    iget-boolean p1, p0, Landroidx/room/a;->j:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

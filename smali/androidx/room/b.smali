.class public abstract Landroidx/room/b;
.super Landroidx/room/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/room/j;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/room/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/j;-><init>(Landroidx/room/g;)V

    return-void
.end method


# virtual methods
.method protected abstract d(Ll4;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/room/j;->a()Ll4;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/b;->d(Ll4;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Ll4;->d0()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/room/j;->c(Ll4;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/room/j;->c(Ll4;)V

    throw p1
.end method

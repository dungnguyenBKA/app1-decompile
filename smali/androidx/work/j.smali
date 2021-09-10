.class public final Landroidx/work/j;
.super Landroidx/work/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/j$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/work/j$a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/work/o$a;->a:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/work/o$a;->b:Lc6;

    iget-object p1, p1, Landroidx/work/o$a;->c:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Landroidx/work/o;-><init>(Ljava/util/UUID;Lc6;Ljava/util/Set;)V

    return-void
.end method

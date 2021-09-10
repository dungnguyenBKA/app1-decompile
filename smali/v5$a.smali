.class Lv5$a;
.super Landroidx/room/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5;-><init>(Landroidx/room/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Lt5;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lv5;Landroidx/room/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/g;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `Dependency`(`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0
.end method

.method public d(Ll4;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lt5;

    .line 2
    iget-object v0, p2, Lt5;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lj4;->N(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lj4;->g(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p2, p2, Lt5;->b:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 6
    invoke-interface {p1, v0}, Lj4;->N(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v0, p2}, Lj4;->g(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

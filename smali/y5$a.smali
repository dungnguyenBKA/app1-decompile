.class Ly5$a;
.super Landroidx/room/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly5;-><init>(Landroidx/room/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Lw5;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ly5;Landroidx/room/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/g;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo`(`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method

.method public d(Ll4;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lw5;

    .line 2
    iget-object v0, p2, Lw5;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lj4;->N(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lj4;->g(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 5
    iget p2, p2, Lw5;->b:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lj4;->z(IJ)V

    return-void
.end method

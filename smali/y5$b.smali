.class Ly5$b;
.super Landroidx/room/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly5;-><init>(Landroidx/room/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ly5;Landroidx/room/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/j;-><init>(Landroidx/room/g;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object v0
.end method

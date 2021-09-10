.class Le6$d;
.super Landroidx/room/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6;-><init>(Landroidx/room/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Le6;Landroidx/room/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/j;-><init>(Landroidx/room/g;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE workspec SET period_start_time=? WHERE id=?"

    return-object v0
.end method

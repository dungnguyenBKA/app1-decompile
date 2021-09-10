.class Lvi0$j$a;
.super Lvi0$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi0$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvi0$j;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Laj0;)V
    .locals 1

    .line 1
    sget-object v0, Lqi0;->g:Lqi0;

    invoke-virtual {p1, v0}, Laj0;->d(Lqi0;)V

    return-void
.end method

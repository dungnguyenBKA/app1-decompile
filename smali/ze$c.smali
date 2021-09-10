.class Lze$c;
.super Lpe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpe<",
        "Lze$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpe;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lye;
    .locals 1

    .line 1
    new-instance v0, Lze$b;

    invoke-direct {v0, p0}, Lze$b;-><init>(Lze$c;)V

    return-object v0
.end method

.method public d(ILandroid/graphics/Bitmap$Config;)Lze$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpe;->b()Lye;

    move-result-object v0

    check-cast v0, Lze$b;

    .line 2
    invoke-virtual {v0, p1, p2}, Lze$b;->b(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.class public Lof0;
.super Ljp/co/cyberagent/android/gpuimage/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/d;-><init>(Ljava/util/List;)V

    .line 2
    new-instance v0, Lpf0;

    invoke-direct {v0, p1}, Lpf0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/d;->k(Ljp/co/cyberagent/android/gpuimage/c;)V

    .line 3
    new-instance p1, Lqf0;

    invoke-direct {p1}, Lqf0;-><init>()V

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/d;->k(Ljp/co/cyberagent/android/gpuimage/c;)V

    return-void
.end method

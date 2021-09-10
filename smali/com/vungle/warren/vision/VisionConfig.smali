.class public Lcom/vungle/warren/vision/VisionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/vision/VisionConfig$Limits;
    }
.end annotation


# instance fields
.field public aggregationFilters:[Ljava/lang/String;
    .annotation runtime Lc70;
        value = "aggregation_filters"
    .end annotation
.end field

.field public aggregationTimeWindows:[I
    .annotation runtime Lc70;
        value = "aggregation_time_windows"
    .end annotation
.end field

.field public enabled:Z
    .annotation runtime Lc70;
        value = "enabled"
    .end annotation
.end field

.field public viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;
    .annotation runtime Lc70;
        value = "view_limit"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Ljx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:Landroid/animation/TimeInterpolator;

.field public static final c:Landroid/animation/TimeInterpolator;

.field public static final d:Landroid/animation/TimeInterpolator;

.field public static final e:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Ljx;->a:Landroid/animation/TimeInterpolator;

    .line 2
    new-instance v0, Lx3;

    invoke-direct {v0}, Lx3;-><init>()V

    sput-object v0, Ljx;->b:Landroid/animation/TimeInterpolator;

    .line 3
    new-instance v0, Lw3;

    invoke-direct {v0}, Lw3;-><init>()V

    sput-object v0, Ljx;->c:Landroid/animation/TimeInterpolator;

    .line 4
    new-instance v0, Ly3;

    invoke-direct {v0}, Ly3;-><init>()V

    sput-object v0, Ljx;->d:Landroid/animation/TimeInterpolator;

    .line 5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Ljx;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method

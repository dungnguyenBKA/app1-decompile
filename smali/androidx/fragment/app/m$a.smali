.class final Landroidx/fragment/app/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/fragment/app/Fragment;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroidx/lifecycle/f$b;

.field h:Landroidx/lifecycle/f$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/fragment/app/m$a;->a:I

    .line 4
    iput-object p2, p0, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    .line 5
    sget-object p1, Landroidx/lifecycle/f$b;->f:Landroidx/lifecycle/f$b;

    iput-object p1, p0, Landroidx/fragment/app/m$a;->g:Landroidx/lifecycle/f$b;

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/m$a;->h:Landroidx/lifecycle/f$b;

    return-void
.end method

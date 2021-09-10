.class Landroidx/transition/e$a;
.super Landroidx/transition/Transition$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/e;->r(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/transition/e;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/transition/e$a;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroidx/transition/Transition$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/transition/e$a;->a:Landroid/graphics/Rect;

    return-object p1
.end method

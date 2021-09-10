.class Lbp;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcp;


# direct methods
.method constructor <init>(Lcp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbp;->a:Lcp;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbp;->a:Lcp;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcp;->a(Lcp;F)F

    .line 2
    iget-object v0, p0, Lbp;->a:Lcp;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcp;->b(Lcp;F)F

    .line 3
    iget-object p1, p0, Lbp;->a:Lcp;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcp;->c(Lcp;I)I

    return v0
.end method

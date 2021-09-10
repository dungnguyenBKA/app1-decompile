.class Lcom/google/android/material/floatingactionbutton/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic b:Lcom/google/android/material/floatingactionbutton/e;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/g;->b:Lcom/google/android/material/floatingactionbutton/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/g;->b:Lcom/google/android/material/floatingactionbutton/e;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/e;->u()V

    const/4 v0, 0x1

    return v0
.end method

.class Lcom/google/android/material/bottomnavigation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/j$b;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ll3;Lcom/google/android/material/internal/j$c;)Ll3;
    .locals 4

    .line 1
    iget v0, p3, Lcom/google/android/material/internal/j$c;->d:I

    invoke-virtual {p2}, Ll3;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lcom/google/android/material/internal/j$c;->d:I

    .line 2
    iget v0, p3, Lcom/google/android/material/internal/j$c;->a:I

    iget v2, p3, Lcom/google/android/material/internal/j$c;->b:I

    iget p3, p3, Lcom/google/android/material/internal/j$c;->c:I

    .line 3
    sget v3, Lc3;->g:I

    .line 4
    invoke-virtual {p1, v0, v2, p3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p2
.end method

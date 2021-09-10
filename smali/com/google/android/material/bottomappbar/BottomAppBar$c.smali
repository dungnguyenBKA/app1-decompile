.class Lcom/google/android/material/bottomappbar/BottomAppBar$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ll3;Lcom/google/android/material/internal/j$c;)Ll3;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p2}, Ll3;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->n0(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I

    .line 2
    iget v0, p3, Lcom/google/android/material/internal/j$c;->d:I

    invoke-virtual {p2}, Ll3;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lcom/google/android/material/internal/j$c;->d:I

    .line 3
    iget v0, p3, Lcom/google/android/material/internal/j$c;->a:I

    iget v2, p3, Lcom/google/android/material/internal/j$c;->b:I

    iget p3, p3, Lcom/google/android/material/internal/j$c;->c:I

    .line 4
    sget v3, Lc3;->g:I

    .line 5
    invoke-virtual {p1, v0, v2, p3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p2
.end method

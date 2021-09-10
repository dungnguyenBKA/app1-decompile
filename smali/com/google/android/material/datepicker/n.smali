.class Lcom/google/android/material/datepicker/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field final synthetic c:Lcom/google/android/material/datepicker/o;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/o;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/n;->c:Lcom/google/android/material/datepicker/o;

    iput-object p2, p0, Lcom/google/android/material/datepicker/n;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/n;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/m;->a()I

    move-result p2

    if-lt p3, p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/m;->c()I

    move-result p1

    if-gt p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/google/android/material/datepicker/n;->c:Lcom/google/android/material/datepicker/o;

    invoke-static {p1}, Lcom/google/android/material/datepicker/o;->z(Lcom/google/android/material/datepicker/o;)Lcom/google/android/material/datepicker/e$f;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/datepicker/n;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/material/datepicker/m;->b(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    check-cast p1, Lcom/google/android/material/datepicker/e$d;

    .line 4
    iget-object p4, p1, Lcom/google/android/material/datepicker/e$d;->a:Lcom/google/android/material/datepicker/e;

    invoke-static {p4}, Lcom/google/android/material/datepicker/e;->m1(Lcom/google/android/material/datepicker/e;)Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/material/datepicker/CalendarConstraints;->a()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object p4

    invoke-interface {p4, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->L(J)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 5
    iget-object p4, p1, Lcom/google/android/material/datepicker/e$d;->a:Lcom/google/android/material/datepicker/e;

    invoke-static {p4}, Lcom/google/android/material/datepicker/e;->n1(Lcom/google/android/material/datepicker/e;)Lcom/google/android/material/datepicker/DateSelector;

    move-result-object p4

    invoke-interface {p4, p2, p3}, Lcom/google/android/material/datepicker/DateSelector;->b0(J)V

    .line 6
    iget-object p2, p1, Lcom/google/android/material/datepicker/e$d;->a:Lcom/google/android/material/datepicker/e;

    iget-object p2, p2, Lcom/google/android/material/datepicker/q;->U:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/datepicker/p;

    .line 7
    iget-object p4, p1, Lcom/google/android/material/datepicker/e$d;->a:Lcom/google/android/material/datepicker/e;

    invoke-static {p4}, Lcom/google/android/material/datepicker/e;->n1(Lcom/google/android/material/datepicker/e;)Lcom/google/android/material/datepicker/DateSelector;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/material/datepicker/DateSelector;->V()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/google/android/material/datepicker/p;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p2, p1, Lcom/google/android/material/datepicker/e$d;->a:Lcom/google/android/material/datepicker/e;

    invoke-static {p2}, Lcom/google/android/material/datepicker/e;->l1(Lcom/google/android/material/datepicker/e;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    .line 9
    iget-object p2, p1, Lcom/google/android/material/datepicker/e$d;->a:Lcom/google/android/material/datepicker/e;

    invoke-static {p2}, Lcom/google/android/material/datepicker/e;->o1(Lcom/google/android/material/datepicker/e;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p1, p1, Lcom/google/android/material/datepicker/e$d;->a:Lcom/google/android/material/datepicker/e;

    invoke-static {p1}, Lcom/google/android/material/datepicker/e;->o1(Lcom/google/android/material/datepicker/e;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    :cond_2
    return-void
.end method

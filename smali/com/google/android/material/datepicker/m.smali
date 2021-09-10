.class Lcom/google/android/material/datepicker/m;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field static final e:I


# instance fields
.field final a:Lcom/google/android/material/datepicker/Month;

.field final b:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;"
        }
    .end annotation
.end field

.field c:Lcom/google/android/material/datepicker/b;

.field final d:Lcom/google/android/material/datepicker/CalendarConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/c;->e()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/m;->e:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/Month;",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/DateSelector;

    .line 4
    iput-object p3, p0, Lcom/google/android/material/datepicker/m;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->c()I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->c()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->c()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->c()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->g:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->g:I

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/m;->b(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->f:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/material/datepicker/b;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/b;

    .line 4
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0086

    .line 6
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->a()I

    move-result p2

    sub-int p2, p1, p2

    const/4 p3, 0x1

    if-ltz p2, :cond_4

    .line 8
    iget-object v2, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    iget v3, v2, Lcom/google/android/material/datepicker/Month;->g:I

    if-lt p2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p2, p3

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v2, p2}, Lcom/google/android/material/datepicker/Month;->d(I)J

    move-result-wide v2

    .line 12
    iget-object p2, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/Month;

    iget p2, p2, Lcom/google/android/material/datepicker/Month;->e:I

    invoke-static {}, Lcom/google/android/material/datepicker/Month;->i()Lcom/google/android/material/datepicker/Month;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/datepicker/Month;->e:I

    if-ne p2, v4, :cond_3

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/c;->b(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/c;->g(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p2, 0x8

    .line 17
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 19
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/m;->b(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_5

    goto/16 :goto_3

    .line 20
    :cond_5
    iget-object p2, p0, Lcom/google/android/material/datepicker/m;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints;->a()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v2, v3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->L(J)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 21
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 22
    iget-object p2, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->S()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 24
    invoke-static {}, Lcom/google/android/material/datepicker/c;->e()Ljava/util/Calendar;

    move-result-object p3

    .line 25
    invoke-virtual {p3, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 26
    invoke-static {p3}, Lcom/google/android/material/datepicker/c;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    .line 27
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 28
    invoke-static {}, Lcom/google/android/material/datepicker/c;->e()Ljava/util/Calendar;

    move-result-object p3

    .line 29
    invoke-virtual {p3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 30
    invoke-static {p3}, Lcom/google/android/material/datepicker/c;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    .line 31
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long p3, v3, v1

    if-nez p3, :cond_6

    .line 32
    iget-object p1, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/b;

    iget-object p1, p1, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/a;->d(Landroid/widget/TextView;)V

    goto :goto_3

    .line 33
    :cond_7
    invoke-static {}, Lcom/google/android/material/datepicker/c;->d()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p1, p2, v1

    if-nez p1, :cond_8

    .line 34
    iget-object p1, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/b;

    iget-object p1, p1, Lcom/google/android/material/datepicker/b;->c:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/a;->d(Landroid/widget/TextView;)V

    goto :goto_3

    .line 35
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/b;

    iget-object p1, p1, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/a;->d(Landroid/widget/TextView;)V

    goto :goto_3

    .line 36
    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 37
    iget-object p1, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/b;

    iget-object p1, p1, Lcom/google/android/material/datepicker/b;->g:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/a;->d(Landroid/widget/TextView;)V

    :goto_3
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

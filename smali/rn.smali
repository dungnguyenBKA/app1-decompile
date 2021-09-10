.class public Lrn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lrn;->a:Ljava/util/List;

    .line 2
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v3, v2, [I

    const-string v4, "#EAF599"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const-string v4, "#7BF6F5"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    aput v4, v3, v6

    const v4, 0x7f070199

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#63C1FE"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#FBC1F2"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f07019a

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#6FE9D3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#9082E6"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f07019b

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#FED3FE"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#FBCBBF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f07019c

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#9DF1EC"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#4ACBC3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f07019d

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#FFB983"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#FE6DE5"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f07019e

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#C9FEBE"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#FEADBA"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f07019f

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#FA7491"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#FF9A88"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701a0

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#FD7096"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#FEE331"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701a1

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#00A9C1"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#E6F97E"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701a2

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#19D2E5"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#4326CA"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701a3

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#FCAC39"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#FF4A86"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701a4

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#FECF08"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#FE18BD"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701a5

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x3

    new-array v4, v3, [I

    const-string v7, "#31D9FF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v5

    const-string v7, "#F08887"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    const-string v7, "#FF5E4F"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v2

    const v7, 0x7f0701a6

    invoke-static {v7, v1, v4}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v3, [I

    const-string v7, "#42C14A"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v5

    const-string v7, "#00AB81"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    const-string v7, "#003B8E"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v2

    const v7, 0x7f0701a7

    invoke-static {v7, v1, v4}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v3, [I

    const-string v7, "#004ABF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v5

    const-string v7, "#CB33A5"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    const-string v7, "#F76061"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v2

    const v7, 0x7f0701a8

    invoke-static {v7, v1, v4}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v2, [I

    const-string v7, "#9BEFE1"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v5

    const-string v7, "#4925F4"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    const v7, 0x7f0701a9

    invoke-static {v7, v1, v4}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v2, [I

    const-string v7, "#FF7BF5"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v5

    const-string v7, "#5A86FF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    const v7, 0x7f0701aa

    invoke-static {v7, v1, v4}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v2, [I

    const-string v7, "#FAC8FC"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v5

    const-string v7, "#D100E0"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    const v7, 0x7f0701ab

    invoke-static {v7, v1, v4}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v3, [I

    const-string v7, "#36D08E"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v5

    const-string v7, "#C8E077"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    const-string v7, "#FF54CE"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v2

    const v7, 0x7f0701ac

    invoke-static {v7, v1, v4}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v3, [I

    const-string v7, "#8977EB"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v5

    const-string v7, "#35F4FB"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    const-string v7, "#F5FE7E"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v2

    const v7, 0x7f0701ad

    invoke-static {v7, v1, v4}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v3, [I

    const-string v7, "#634EF4"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v5

    const-string v7, "#EBC7FA"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    const-string v7, "#5FE9C9"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v2

    const v7, 0x7f0701ae

    invoke-static {v7, v1, v4}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v3, [I

    const-string v4, "#6DCDD0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#BDD7B9"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const-string v4, "#FFA86D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    const v4, 0x7f0701af

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#FDEB71"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#F8D800"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701b0

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#FFF6B7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#F6416C"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701b1

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#81FBB8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#28C76F"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701b2

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#FFF720"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#3CD500"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701b3

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#FAB2FF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#1904E5"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701b4

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v2, [I

    const-string v4, "#81FFEF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const-string v4, "#F067B4"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0701b5

    invoke-static {v4, v1, v3}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v2, [I

    const-string v3, "#A0FE65"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    const-string v3, "#FA016D"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    const v3, 0x7f0701b6

    invoke-static {v3, v1, v2}, Lsn;->a(ILandroid/graphics/drawable/GradientDrawable$Orientation;[I)Lqn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lon;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrn;->a:Ljava/util/List;

    return-object v0
.end method

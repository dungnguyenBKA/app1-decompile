.class public Lhp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/drawable/GradientDrawable$Orientation;F)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 10

    .line 1
    sget-object v0, Lhp$a;->a:[I

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x439d8000    # 315.0f

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43610000    # 225.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x43070000    # 135.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42340000    # 45.0f

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const v0, 0x439d8000    # 315.0f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x43610000    # 225.0f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    :pswitch_5
    const/high16 v0, 0x43070000    # 135.0f

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    :pswitch_7
    const/high16 v0, 0x42340000    # 45.0f

    :goto_0
    add-float/2addr v0, p1

    const/high16 p1, 0x43b40000    # 360.0f

    cmpl-float v9, v0, p1

    if-ltz v9, :cond_0

    sub-float/2addr v0, p1

    :cond_0
    cmpl-float p1, v0, v8

    if-nez p1, :cond_1

    .line 2
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_1
    cmpl-float p1, v0, v7

    if-nez p1, :cond_2

    .line 3
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_2
    cmpl-float p1, v0, v6

    if-nez p1, :cond_3

    .line 4
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_3
    cmpl-float p1, v0, v5

    if-nez p1, :cond_4

    .line 5
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_4
    cmpl-float p1, v0, v4

    if-nez p1, :cond_5

    .line 6
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_5
    cmpl-float p1, v0, v3

    if-nez p1, :cond_6

    .line 7
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_6
    cmpl-float p1, v0, v2

    if-nez p1, :cond_7

    .line 8
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_7
    cmpl-float p1, v0, v1

    if-nez p1, :cond_8

    .line 9
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :cond_8
    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

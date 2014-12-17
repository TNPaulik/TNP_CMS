<?
$form = $this->beginWidget('CActiveForm', array('id' => 'user-login-form'));
CHtml::$afterRequiredLabel = '';
?>

<div class="container" style="width: 450px">
    <div class="span4 offset4">
        <div class="padded">
            <div class="login box" style="margin-top: 80px;">
                <div class="box-header">
                    <span class="title">Login</span>
                </div>
                <div class="box-content padded">
                    <form class="separate-sections">
                        <div class="input-prepend">
                            <span class="add-on" href="#">
                                <i class="icon-user"></i>
                            </span>
                            <?= $form->textField($model, 'email', array('placeholder' => 'Benutzername','style' => 'margin-left: 4px; width: 90%')); ?>
                        </div>

                        <div class="input-prepend">
                            <span class="add-on" href="#" style="margin-top: 15px">
                                <i class="icon-key" ></i>
                            </span>
                            <?= $form->passwordField($model, 'password', array('placeholder' => 'Passwort', 'style' => 'margin-top: 15px; width: 90%')); ?>
                        </div>
                        <div>
                            <?php echo CHtml::submitButton('Login', array('class' => 'btn btn-blue btn-block', 'style' => 'margin-top: 30px')); ?>
                            <div class="alert-message warning">
                                <?= $form->error($model, 'password'); ?>
                                <?= $form->error($model, 'loginError'); ?>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $this->endWidget(); ?>
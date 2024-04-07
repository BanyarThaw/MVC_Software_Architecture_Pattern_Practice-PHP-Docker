
<h2>List</h2>
<ul>
  <?php foreach($data as $cat): ?>
  <li>
    [ <a href="<?php echo $PATH; ?>/category/del/<?php echo  $cat['id']; ?>">del</a> ]
    <strong><?php echo $cat['name']; ?></strong>
  </li>
  <?php endforeach; ?>
</ul>

<br>
<a href="<?php echo $PATH; ?>/category/new/">New Category</a>